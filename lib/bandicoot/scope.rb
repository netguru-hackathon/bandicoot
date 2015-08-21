module Bandicoot
  class Scope
    attr_reader :name, :attributes

    def initialize(name, attributes)
      @name = name
      @attributes = attributes
      @attributes.freeze
    end
  end
end
