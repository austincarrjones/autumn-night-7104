class SearchController < ApplicationController
  def index
    @search_results = SearchFacade.new.search(params[:nation])
    @nation = params[:nation]
    # binding.pry
    @total_members = @search_results.count
  end
end
