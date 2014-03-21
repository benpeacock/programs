require 'spec_helper'

describe Answer do
  it { should belong_to(:question) }
  it { should belong_to(:year) }
  it { should belong_to(:program) }

  before(:each) do
  	@answer = FactoryGirl.build(:answer)
  end

  it "should have a name" do
  	@answer.answer.should_not be_nil
  end

  it "should have a question" do
  	@answer.question.should_not be_nil
  end

  it "should have a year" do
    @answer.year.should_not be_nil
  end

  it "should have a program" do
  	@answer.program.should_not be_nil
  end
end