class SearchController < ApplicationController
  def index

    @nation_id = params[:nation].gsub('+', ' ').downcase.strip
    @all_characters = NationFacade.get_all_characters
    @characters_by_nation = @all_characters.select do |character|
      character_affiliation = character.affiliation&.downcase&.strip
      character_affiliation && character_affiliation.include?(@nation_id)
    end
  end
end