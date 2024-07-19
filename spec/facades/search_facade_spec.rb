require "rails_helper"

RSpec.describe SearchFacade do
  describe "#search" do
    it "should return array of member objects when given search param" do
      facade = SearchFacade.new
      response = facade.search("fire+nation")

      expect(facade).to be_a SearchFacade
      expect(response).to be_an Array
      expect(response).to be_all Member
    end
  end
end