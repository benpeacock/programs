require 'spec_helper'

describe Question do
  it { should belong_to(:tab) }
  it { should belong_to(:type) }
  it { should have_many(:answers) }

  before(:each) do
  	@question = FactoryGirl.build(:question)
  end

  it "should have a question" do
  	@question.question.should_not be_nil
  end
end