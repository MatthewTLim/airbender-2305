require "rails_helper"

RSpec.describe "Nation Facade" do
  before do

    @nation_facade = NationFacade.get_character_affiliation("Fire", "Nation")
  end

  describe "#get_all_markets" do
    it "returns all markets" do
      expect(@nation_facade).to be_an(Array)
      expect(@nation_facade.first).to be_a(NationsPoro)
      expect(@nation_facade.first.name).to eq("Chan (Fire Nation admiral)")
      expect(@nation_facade.first.affiliation).to eq("Fire Nation Navy")
      expect(@nation_facade.first.allies).to be_an(Array)
      expect(@nation_facade.first.enemies).to be_an(Array)
    end
  end
end