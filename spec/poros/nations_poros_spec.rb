require 'rails_helper'

RSpec.describe NationsPoro do
  describe "initialize" do
    it "has attributes" do
      nation_attributes = {
        id: 123,
        name: "Test",
        affiliation: "Test affiliation",
        allies: ["Test Ally"],
        enemies: ["Test Enemy"]
      }
      
      nation_poro = NationsPoro.new(nation_attributes)

      expect(nation_poro.id).to eq(123)
      expect(nation_poro.name).to eq("Test")
      expect(nation_poro.affiliation).to eq("Test affiliation")
      expect(nation_poro.enemies).to eq(["Test Enemy"])
      expect(nation_poro.allies).to eq(["Test Ally"])
    end
  end
end