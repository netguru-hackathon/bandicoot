module Bandicoot
  class Scope
    attr_accessor :name, :attributes, :css
  
    def initialize(name, css)
      @attributes = []
      self.name = name
      self.css = css
    end
  end
end
