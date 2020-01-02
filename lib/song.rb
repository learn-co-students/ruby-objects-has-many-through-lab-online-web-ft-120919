class Song
  attr_accessor :name, :genre, :artist 
  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist 
    @genre = genre 
    @@all << self
  end #init

  def self.all
    @@all 
  end #self.all

end #class