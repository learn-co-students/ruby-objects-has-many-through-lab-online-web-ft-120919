class Artist
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  def songs
    Song.all.select{|song|song.artist == self}
  end
  def new_song(song_name, song_genre)
    Song.new(song_name, self, song_genre )
  end
  def genres
    Song.all.select { |song|song.artist == self}.map { |song|song.genre  }
  end
end
