require "bandicoot/config"
require "bandicoot/attribute"
require "bandicoot/version"
require "bandicoot/dsl"
require "bandicoot/processor"
require 'active_support/all'

# Your code goes here...
module Bandicoot
  mattr_accessor :config

  def self.included(receiver)
    self.config = Config.new
    receiver.extend Bandicoot::DSL
    receiver.include Bandicoot::Processor
  end
end
