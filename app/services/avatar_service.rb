class AvatarService
  def get_character_affiliation(element)
    get_url("/api/v1/characters?name=#{element}")
  end

  def get_all_characters
    get_url("/api/v1/characters?perPage=1000000")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'https://last-airbender-api.fly.dev/')
  end
end