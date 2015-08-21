require 'bandicoot'

class TestClass
  include Bandicoot

  item :product do
    scrap :name, css: '.first-name'
    scrap :price, css: '.last-name'
  end

  paginate_url 'http://www.matras.pl/artykuly-szkolne/worki,k,1222?utm_source=Matras_wewn&utm_medium=www&utm_campaign=link_menu',
    next_page_css_path: 'div.pages ol li a'
end
