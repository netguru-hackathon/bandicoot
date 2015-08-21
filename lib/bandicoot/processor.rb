require 'watir'
require 'nokogiri'

module Bandicoot
  module Processor
    attr_accessor :browser, :content

    def crawl      
      self.browser = Watir::Browser.new
      
      content = parse_content
      

      result = config.scopes.map do | scope|
        process_scope(content, scope)
      end

      puts result
      result
    end

    private

    def config
      self.class.config
    end

    def process_scope(content, scope)
      scope_data = content.css(scope.css)
      puts scope_data
      scope_data.map do |data|
        result = {}
        scope.attributes.each do |attr|
          puts data.css(attr.css_path).text
          result[attr.name] = data.css(attr.css_path).text
        end
        result
        puts result
      end
    end

    def exists?(element_path)
      content.at_css(element_path).present?
    end 

    def parse_content
      browser.goto config.url
      Nokogiri::HTML.parse browser.html
    end
  end
end
