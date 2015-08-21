class Attribute
  attr_reader :name, :css_path

  def initialize(name, css)
    self.name = name
    self.css_path = css
  end
end
