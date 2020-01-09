class Genre 
  attr_accessor :artist, :song, :name 
  @@all = []
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def songs
    Song.all.select {|song| song.genre == self}
  end 
  def artists 
    songs.map {|song|
      song.artist
    }
  end 
  def self.all 
    @@all
  end 
end 
end 
#This is just 2 sets of has many through, I figured it out with the musical ones, and should use those ones for reference