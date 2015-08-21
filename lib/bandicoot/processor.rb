module Bandicoot
  module Processor
    attr_accessor :browser, :content

    def boot_browser
      self.browser = Watir::Browser.new
      self.browser.goto config.url
      parse_content
    end

    def crawl
      boot_browser
      begin
        @final_result = config.scopes.each_with_object([]) do |scope, result|
          result << { "#{scope.name}" => process_scope(scope) }
        end
      end unless exists?(config.next_page_css_path)
      p @final_result
    end

    def click_new_page
      # browser.click(config.next_page_css_path)
    end

    # private

    def config
      self.class.config
    end

    def process_scope(scope)
      scoped_contents(scope.css).each_with_object([]) do |scoped_content, data|
        scope.attributes.each do |attr|
          data << scoped_content.at_css(attr.css_path).text.strip.chomp
        end
      end
    end

    def exists?(element_path)
      content.at_css(element_path).present?
    end 

    def parse_content
      self.content = Nokogiri::HTML.parse(browser.html)
    end

    def scoped_contents(css_path)
      content.css(css_path)
    end
  end
end
