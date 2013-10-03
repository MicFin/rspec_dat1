require 'spec_helper'
require_relative '../lib/math'

# # setting up the test for our program to square a number
# describe "#square" do
# end

# # describe and it are methods, and #square is our argument
# describe "#square" do
#   it "should have a method called square" do
#   end
# end

describe "#square" do
  it "should have a method called square" do
    #checks to see if there is a method called square
    expect(method(:square))
  end

   it "should have one required parameter called x" do
    # setting parameters to the parameters of our method square 
   parameters = method(:square).parameters
   # req means it is required
   expect(parameters[0]).to include (:req)
   # x means that is is
   expect(parameters[0]).to include (:x)
   # the parameters length must be 1
   expect(parameters.length).to eq 1
   end

   it "should square numbers" do
    expect(square(0.5)).to eq 0.25
    expect(square(1)).to eq 1
    expect(square(4)).to eq 16
    expect(square(-4)).to eq 16
  end
 end