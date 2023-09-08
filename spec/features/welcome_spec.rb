require "rails_helper"

RSpec.describe "Welcome" do
  describe "#search_for_members" do
    it "can search members by nation" do

      visit "/"

      select "Fire Nation", from: "nation"

      click_button "Search For Members"

      expect(current_path).to eq("/search")
      expect(page).to have_content("Total Members: 97")
    end

    it "displays member info within the nation" do
      visit "/"

      select "Fire Nation", from: "nation"

      click_button "Search For Members"

      expect(current_path).to eq("/search")
      expect(page).to have_content("Fire Nation councilwoman")
      expect(page).to have_content("Fire Nation United Republic Council (formerly)")
      expect(page).to have_content("Her husband")
      expect(page).to have_css("img[src='https://vignette.wikia.nocookie.net/avatar/images/f/f9/Fire_Nation_councilwoman.png/revision/latest?cb=20121110144847']")
    end
  end
end