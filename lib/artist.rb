class Artist
  @@all = []
  attr_accessor :name 

  def initialize(name)
    @name = name 
    @@all << self
  end 

  def self.all
    # @@all.each do |artist|
    #   puts artist 
    # end #each
    @@all 
  end #self.all

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end #new_song

  def songs
    Song.all.select{|song| song.artist == self}
  end #songs

  def genres
    artist_songs = self.songs
    artist_songs.collect {|song| song.genre}
  end #genres

end #class