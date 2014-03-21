require 'spec_helper'

describe Country do
  it { should have_many(:programs) }

  before(:each) do
  	@country = FactoryGirl.build(:country)
  end

  it "should have a name" do
  	@country.name.should_not be_nil
  end
end