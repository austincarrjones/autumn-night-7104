class SearchService
  def initialize
  end

  def conn
    conn = Faraday.new(url: "https://last-airbender-api.fly.dev")
  end

  def get_url(url)
    response = conn.get(url)
    json = JSON.parse(response.body, symbolize_names: true)
    # json[:data]
  end

  def search(nation)
    get_url("/api/v1/characters?affiliation=#{nation}")
  end
end