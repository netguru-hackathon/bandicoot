require "bandicoot/version"
require "bandicoot/dsl"
require "bandicoot/processor"


# Your code goes here...
module Bandicoot
  def self.included(receiver)
    receiver.extend Bandicoot::DSL
    receiver.include Bandicoot::Processor
  end
end
