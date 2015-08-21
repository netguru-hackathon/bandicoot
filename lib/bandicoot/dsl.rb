require 'bandicoot/attribute'
require 'bandicoot/scope'

module Bandicoot
  module DSL
    def scrap(attr_name, css:)
      @current_scope.attributes << Attribute.new(attr_name, css)
    end

    def item(scope_name, &block)
      block.call
      config.release_buffered_attributes(scope_name)
    end

    def paginate_url(url, next_page_css_path:)
      config.next_page_css_path = next_page_css_path
      config.url = url
    end

    def scope(name, css)
      @current_scope = Scope.new(name, css)
      config.scopes << @current_scope
      yield
      @current_scope = nil
    end

    def config
      @config ||= Config.new
    end
  end
end
