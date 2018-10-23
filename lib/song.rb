class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(filename)
    artist = filename.split(" - ")[0]
    song = filename.split(" - ")[1]
    new_artist = Artist.find_or_create_by_name(artist)
    new_song = self.new(song)
    new_artist.add_song(new_song)
    return new_song
  end
  
end