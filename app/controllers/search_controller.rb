class SearchController < ApplicationController
  def index
    #params[:nation] = "fire+nation"
    @search_results = SearchFacade.new.search(params[:nation])
    @nation = params[:nation]
  end
end
