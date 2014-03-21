require 'spec_helper'

describe Year do
  before(:each) do
  	@year = FactoryGirl.build(:year)
  end

  it "should have a year" do
  	@year.year.should_not be_nil
  end
end