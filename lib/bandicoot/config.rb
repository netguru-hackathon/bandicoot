module Bandicoot
  class Config
    attr_accessor :next_page_css_path, :scopes, :url, :buffered_attributes

    def initialize
      self.scopes = []
      self.buffered_attributes = []
    end

    def release_buffered_attributes(scope_name)
      self.scopes ||= []
      self.scopes << Scope.new(scope_name, buffered_attributes)
      buffered_attributes = []
    end
  end
end
