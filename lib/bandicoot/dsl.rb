module Bandicoot
  module DSL
    Attribute = Struct.new(:attr_name, :css)

    def scrap(attr_name, css:)
      attributes.push Attribute.new(attr_name, css)
    end

    def attributes
      @attributes ||= []
    end
 
    def paginate_url(url, next_page_css_path:)
      self.next_page_css_path = next_page_css_path
      self.url = url
    end
    
    attr_accessor :next_page, :url, :origin_url, :next_page_css_path
  end
end
