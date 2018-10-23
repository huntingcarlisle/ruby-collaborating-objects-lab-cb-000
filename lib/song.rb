class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(filename)
    artist = filename.split(" - ")[0]
    song = filename.split(" - ")[1]
    genre = filename.split(" - ")[2].split(".")[0]
    new_song = self.new(song)
    new_song.artist = artist
  end
  
end