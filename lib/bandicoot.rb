require 'bandicoot/config'
require 'bandicoot/attribute'
require 'bandicoot/version'
require 'bandicoot/dsl'
require 'bandicoot/processor'
require 'bandicoot/config'
require 'bandicoot/scope'
require 'active_support/all'
require 'watir'
require 'nokogiri'
require 'pry'


# Your code goes here...
module Bandicoot

  def self.included(receiver)
    receiver.extend Bandicoot::DSL
    receiver.send :include, Bandicoot::Processor
  end
end
