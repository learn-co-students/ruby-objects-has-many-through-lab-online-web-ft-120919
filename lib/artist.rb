class Artist
  attr_accessor :name
  @@all = []

  def initialize(n)
    save
    @name = n
  end

  def save
    @@all << self
  end

  def self.all
    return @@all
  end

  def new_song(n,g)
    song = Song.new(n,self,g)

  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    song_collection = self.songs
    genres_by_artist = song_collection.collect {|s| s.genre}
    genres_by_artist.uniq
  end

end




