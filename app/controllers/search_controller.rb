class SearchController < ApplicationController
  def index
    @nation_id = params[:nation]
    @nations_index = NationFacade.get_character_affiliation(@nation_id)
  end
end