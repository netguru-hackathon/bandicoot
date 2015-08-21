require 'bandicoot'

class TestClass
  include Bandicoot

  scrap :first_name, css: '.first-name'
  scrap :last_name, css: '.last-name'
  paginate_url 'http://www.matras.pl/artykuly-szkolne/worki,k,1222?utm_source=Matras_wewn&utm_medium=www&utm_campaign=link_menu', next_page_css_path: '.next'
end
