class SearchFacade
  def initialize
  end

  def search(nation)
    search_results = SearchService.new.search(nation)
    search_results.map do |member|
      #search_results output is array of hashes
      Member.new(member)
    end
  end
end