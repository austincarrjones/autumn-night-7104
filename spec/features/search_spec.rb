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
        expect(page).to have_content("Total number of people who live in the Fire Nation: 20")
      end

      it "should display a list with detailed information for the first 25 members of the Fire Nation" do
        expect(page).to have_selector("table tr", count: 21)
      end
    end

    describe "detailed list for each member" do
      it "should show the name of the member (and their photo, if they have one), allies, enemies, affiliatons" do
        within "table" do
          within "tr:nth-child(2)" do
            expect(page).to have_content("Bully guard")
            expect(page).to have_content("Azula")
            expect(page).to have_content("Sokka")
            expect(page).to have_content("Fire Nation")
          end
        end
      end
    end
  end
end