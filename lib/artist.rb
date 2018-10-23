class Artist
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
  end
  
  def save
    @@all << self
  end
  
  def self.all
    return @@all
  end
  
  def self.find_or_create_by_name(name)
    if @@all.any?{|artist| artist.name == name}
      return @@all.find{|artist| artist.name == name}
    else
      return self.new(name)
    end
  end
  
  def print_songs
    puts @songs
  end
  
end