
module Bandicoot    
  class Config
    attr_accessor :next_page_css_path, :url, :scopes

    def initialize
      self.scopes = []
    end
  end
end
