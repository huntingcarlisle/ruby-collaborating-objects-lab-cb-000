class MP3Importer
  attr_accessor :path, @files
  
  def initialize(path)
    @path = path
  end
  
  def files
    @files = Dir.glob("*.jpg")
  end
  
  def import
    
  end
  
end