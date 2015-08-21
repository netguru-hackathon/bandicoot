module Bandicoot
  class Scope
    attr_reader :name, :attributes
  
    def initialize(name, css)
      @attributes = []
      self.name = name
      self.css = css
    end
  end
end
