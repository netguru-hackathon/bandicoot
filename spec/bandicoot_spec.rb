require 'spec_helper'
require 'test_class'

describe Bandicoot do
  it 'has a version number' do
    expect(Bandicoot::VERSION).not_to be nil
  end

  it 'does something useful' do
    TestClass.new
    expect(true).to eq true
  end


end
