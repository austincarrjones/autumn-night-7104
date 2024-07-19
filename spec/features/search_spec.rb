require 'rails_helper'

RSpec.describe "Search Index" do
  context "as a user when I visit '/' and select 'Fire Nation' from the select field and click 'Search for Memebers'" do
    describe "basic routing" do
      it "should route to '/search' and I should see the total number of people who live in the Fire Nation" do
        visit root_path

        select "Fire Nation", from: "nation"
        click_button "Search For Members"

        expect(current_path).to eq(search_path)
      end

      xit "should display a list with detailed information for the first 25 members of the Fire Nation" do

      end
    end

    describe "detailed list for each member" do
      xit "should show the name of the member (and their photo, if they have one)" do

      end
      
      xit "should show the list of allies or 'None'" do

      end

      xit "should show the list of enemies or 'None'" do

      end

      xit "should show any affiliations that the member has" do

      end
    end
  end
end