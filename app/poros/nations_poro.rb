class NationsPoro
  attr_reader :id, :name, :affiliation, :allies, :enemies, :photo_url

  def initialize(attributes)
    @id = attributes[:id]
    @name = attributes[:name]
    @affiliation = attributes[:affiliation]
    @allies = attributes[:allies]
    @enemies = attributes[:enemies]
    @photo_url = attributes[:photo_url]
  end
end