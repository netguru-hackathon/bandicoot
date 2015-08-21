require 'bandicoot/attribute'

module Bandicoot
  module DSL
    def scrap(attr_name, css:)
      config.buffered_attributes << Attribute.new(attr_name, css)
    end

    def item(scope_name, &block)
      block.call
      config.release_buffered_attributes(scope_name)
    end

    def paginate_url(url, next_page_css_path:)
      config.next_page_css_path = next_page_css_path
      config.url = url
    end

    def config
      @config ||= Config.new
    end
  end
end
