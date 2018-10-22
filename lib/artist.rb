class Artist
  attr_accessor :name, :songs
  @@all
  def initialize(name)
    @name = name
  end
  
  def add_song(song)
    @songs << song
  end
  
  def save
    @@all << self
  end
  
  def self.find_or_create_by_name(name)
    # if @@all.include?()
    # end
  end
end