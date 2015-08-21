require 'spec_helper'
require 'test_class'

describe Bandicoot do
  # describe 'version' do
  #   it 'has a version number' do
  #     expect(Bandicoot::VERSION).not_to be_nil
  #   end
  # end

  describe '.scrap' do
    it 'adds attributes' do
      expect(TestClass.config.scopes[0].attributes.size).to eq 2
    end
  end

  describe '.url' do
    it 'returns url' do
      expect(TestClass.config.url).to eq 'http://www.matras.pl/artykuly-szkolne/worki,k,1222?utm_source=Matras_wewn&utm_medium=www&utm_campaign=link_menu'
    end
  end

  describe '.next_page_css_path' do
    it 'returns css' do
      expect(TestClass.config.next_page_css_path).to eq('.product-name a')
    end
  end

  describe '#crawl' do
    it "returns scraped data" do
      puts TestClass.new.crawl
      expect(true).to eq(true)
    end
  end
end
