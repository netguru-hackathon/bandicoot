require 'watir'
require 'nokogiri'

module Bandicoot
  module Processor
    attr_accessor :
    def crawl
      self.browser = Watir::Browser.new :firefox
      browser.goto 'http://google.com'
      Nokogiri::HTML.parse browser.html
    end
  end
end
