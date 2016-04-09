class Group
  class << self; attr_accessor :groups end
  attr_accessor :id, :name

  @groups = []

  def initialize(id, name)
    @id = id
    @name = name
    Group.groups << self
  end

  def compare
    Group.groups.map do |group|
      "#{group.name}:\n https://www.facebook.com/search/#{@id}/members/#{group.id}/members/intersect" unless group.name == @name
    end.compact
  end
end

Group.new("1377991959182741", "Rainier Valley")
Group.new("1184339461578955", "Columbia City/Lakewood")
Group.new("1133045403381642", "Brighton/Dunlap")
Group.new("540843489423190", "Mt. Baker/Genesee")
Group.new("1550101711948991", "Hillman City/Seward Park")
Group.new("445650358957210", "North Beacon Hill")
Group.new("1558670797747208", "Old Beacon Hill")
Group.new("1111935748846088", "Mid/South Beacon Hill/Georgetown")
Group.new("775728229144562", "Rainier Beach/Skyway")
Group.new("794833267266309", "Central District/Madrona/Leschi")

Group.groups.each do |group|
  puts "Links for Buy Nothing #{group.name}:"
  puts group.compare
  puts "\n"
end
