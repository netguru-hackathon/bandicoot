module Bandicoot
  module Dsl
    Attribute = Struct.new(:attr_name, :css)

    def scrap(attr_name, css:)
      attributes.push Attribute.new(attr_name, css)
    end

    def attributes
      @attributes ||= []
    end
  end
end
