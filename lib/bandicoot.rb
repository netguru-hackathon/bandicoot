require "bandicoot/version"
require "bandicoot/dsl"


# Your code goes here...
module Bandicoot
  
  module InstanceMethods
  end
  
  def self.included(receiver)
    receiver.extend Bandicoot::Dsl
  end
end

