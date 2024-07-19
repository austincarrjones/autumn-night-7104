require 'rails_helper'

RSpec.describe "Search Index" do
  context "as a user when I visit '/' and select 'Fire Nation' from the select field and click 'Search for Memebers'" do
    before :each do
      visit root_path

      select "Fire Nation", from: "nation"
      click_button "Search For Members"
    end

    describe "basic routing and total" do
      it "should route to '/search' and I should see the total number of people who live in the Fire Nation" do
        expect(current_path).to eq(search_path)
        expect(page).to have_content("Total number of people who live in the Fire Nation")
      end

      xit "should display a list with detailed information for the first 25 members of the Fire Nation" do
        expect(page).to have_selector("table tr", count: 25)
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