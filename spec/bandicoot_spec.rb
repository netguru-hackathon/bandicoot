require 'spec_helper'
require 'test_class'

describe Bandicoot do
  it 'has a version number' do
    expect(Bandicoot::VERSION).not_to be nil
  end

  describe '.scrap' do
    it 'adds attributes' do
      expect(TestClass.attributes.size).to eq 2
    end
  end

  describe '.url' do
    it 'sets url' do
      expect(TestClass.url).to eq('http://google.com', next_page_path: 'next')
    end
  end

  describe '#crawl' do
    it "returns scraped data" do
      puts TestClass.new.crawl
      expect(TestClass.new.crawl).not_to be_nil
    end
  end
end
