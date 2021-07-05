class Artist 
  attr_accessor :name, :genre, :song 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @genre
    @@all << self 
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select {|songs| songs.artist == self}
  end
  
  def genres
    songs.collect {|artist| artist.genre}
  end 
    
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end
  
end 