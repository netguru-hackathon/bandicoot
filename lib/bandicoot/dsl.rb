module Bandicoot
  module DSL
    attr_accessor :next_page, :paginate_url, :origin_url, :next_page_css_path

    def scrap(attr_name, css:)
      config.attributes << Attribute.new(attr_name, css)
    end
 
    def paginate_url(url, next_page_css_path:)
      config.next_page_css_path = next_page_css_path
      config.url = url
    end
  end
end
