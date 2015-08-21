module Bandicoot
  module Dsl
    Attribute = Struct.new(:attr_name, :css)

    def scrap(attr_name, css:)
      attributes.push Attribute.new(attr_name, css)
    end

    def attributes
      @attributes ||= []
    end

    def scrap(options = {})
    end

    def paginate_url(url, next_page_path:)
      next_page_path = next_page
      url = url
    end

    private

    attr_accessor :next_page, :url, :origin_url, :next_page_path
  end
end
