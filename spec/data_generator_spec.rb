$:.unshift File.join(File.dirname(__FILE__), "..", "lib")
require 'data_generator'

describe DataGenerator do
  before(:each) do
      @data_generator = DataGenerator.new
    end
  it "generates one random word" do
    @data_generator.random_words(1).should match /[a-zA-Z]+/
  end
  it "generates two random words" do
    @data_generator.random_words(2).should match /[a-zA-Z]+\s{1}[a-zA-Z]+/
  end
  it "generates twenty random words" do
    @data_generator.random_words(20).should match /[a-zA-Z]+(\s{1}[a-zA-Z]+){19}/
  end
  it "generates a random email address" do 
    @data_generator.random_email("somebody@example.com").should match /somebody\+[a-zA-Z]+@example.com/
  end
  it "throws an error when an invalid email address is given (no @ symbol)" do
    expect {@data_generator.random_email("somebodyexample.com") }.to raise_error(ArgumentError, "Email address is in an invalid format")
  end
  it "throws an error when an invalid email address is given (no dot in domain name)" do
    expect {@data_generator.random_email("somebody@examplecom") }.to raise_error(ArgumentError, "Email address is in an invalid format")
  end
  it "throws an error when an invalid email address is given (blank)" do
    expect { @data_generator.random_email("") }.to raise_error(ArgumentError, "Email address is in an invalid format")
  end
end