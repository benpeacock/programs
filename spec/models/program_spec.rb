require 'spec_helper'

describe Program do
  it { should belong_to(:country) }

  before(:each) do
  	@program = FactoryGirl.build(:program)
  end

  it "should have a name" do
  	@program.name.should_not be_nil
  end
end