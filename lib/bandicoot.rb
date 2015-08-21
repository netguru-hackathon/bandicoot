require "bandicoot/version"
require "bandicoot/dsl"
require "bandicoot/processor"
require 'active_support/all'

# Your code goes here...
module Bandicoot
  attr_reader :config

  def self.included(receiver)
    config = Config.new
    receiver.extend Bandicoot::DSL
    receiver.include Bandicoot::Processor
  end
end
