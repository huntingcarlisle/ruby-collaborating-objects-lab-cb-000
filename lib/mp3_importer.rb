class MP3Importer
  attr_accessor :path, :files
  
  def initialize(path)
    @path = path
  end
  
  def files
    @files = Dir.glob("../spec/fixtures/mp3s/*.jpg")
    puts files
  end
  
  def import
    
  end
  
end