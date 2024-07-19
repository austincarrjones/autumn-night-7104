require "rails_helper"

RSpec.describe SearchService do
  it "should return a resposne body parsed from JSON when given a search paramater" do 
    response = SearchService.new.search("fire+nation")

    expect(response).to be_a Array
    first_response = response.first

    expect(first_response).to have_key :name
    expect(first_response[:name]).to be_a String
  end
end