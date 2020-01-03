class Genre
  attr_accessor :name 
  @@all = []

  def initialize(name)
    @name = name 
    @@all << self 
  end #name

  def self.all 
    @@all 
  end #self.all

  def songs
    Song.all.select{|song| song.genre  == self}
  end #songs

  def artists
    genre_songs = self.songs
    genre_songs.collect{|song| song.artist}
  end #artists

end #class