require 'spec_helper'

describe Type do
  it { should have_many(:questions) }

  before(:each) do
  	@type = FactoryGirl.build(:type)
  end

  it "should have a name" do
  	@type.name.should_not be_nil
  end
end