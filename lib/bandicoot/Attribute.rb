class Attribute
  attr_reader :name, :css_path

  def initialize(name, css)
    @name = name
    @css_path = css
  end
end
