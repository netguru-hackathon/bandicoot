require 'bandicoot'

class TestClass
  include Bandicoot

  scrap :first_name, css: '.first-name'
  scrap :last_name, css: '.last-name'
end
