class MP3Importer
  attr_accessor :path, :files
  
  def initialize(path)
    @path = path
  end
  
  def files
    @files = Dir.glob("./spec/fixtures/mp3s/*.mp3")
    @files.collect{|filename| filename.split("/")[-1]}
  end
  
  def import
    @files.each{|filename| filename.
  end
  
end