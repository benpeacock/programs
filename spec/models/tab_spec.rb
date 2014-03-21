require 'spec_helper'

describe Tab do
  it { should have_many(:questions) }

  before(:each) do
  	@tab = FactoryGirl.build(:tab)
  end

  it "should have a name" do
  	@tab.name.should_not be_nil
  end
end