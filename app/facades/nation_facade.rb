class NationFacade
  def self.get_character_affiliation(nation)
    service = AvatarService.new
    raw_nation_details = service.get_character_affiliation(nation)
    raw_nation_details.map do |character|
      NationsPoro.new(
        id: character[:_id],
        name: character[:name],
        affiliation: character[:affiliation],
        allies: character[:allies],
        enemies: character[:enemies],
        photo_url: character[:photoUrl]
      )
    end
  end
end
