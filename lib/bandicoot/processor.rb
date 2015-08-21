require 'watir'
require 'nokogiri'

module Bandicoot
  module Processor
    attr_accessor :browser, :content

    def boot_browser
      browser = Watir::Browser.new :firefox
      browser.goto self.class.config.url
    end

    def crawl
      boot_browser
    end

    private


    def exists?(element_path)
      content.at_css(element_path).present?
    end 

    def parse_content
      browser.goto paginate_url
      Nokogiri::HTML.parse browser.html
    end
  end
end
