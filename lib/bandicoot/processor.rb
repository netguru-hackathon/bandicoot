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
      result = Hash.new
      loop do
        config.scopes.each do |scope|
          result[scope.name] ||= []
          result[scope.name] << process_scope(scope)
        end
        go_to_the_next_page
        parse_content
      end
    rescue Watir::Exception::UnknownObjectException => e
      result
    end

    def go_to_the_next_page
      browser.a(css:config.next_page_css_path).click
    end


    # private

    def config
      self.class.config
    end

    def process_scope(scope)
      scoped_contents(scope.css).each_with_object([]) do |scoped_content, scoped_data|
        scoped_data << scope.attributes.each_with_object({}) do |attr, data|
          data[attr.name] = scoped_content.at_css(attr.css_path).text.strip.chomp
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
