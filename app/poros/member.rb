class Member
  attr_reader :name,
              :photoUrl,
              :enemies,
              :allies,
              :affiliation

  def initialize(member)
    # binding.pry
    @name = member[:name]
    @photoUrl = member[:photoUrl]
    @enemies = member[:enemies]
    @allies = member[:allies]
    @affiliation = member[:affiliation]
  end
end