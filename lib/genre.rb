class Genre
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select{ |s|
      s.genre == self
    }
  end

  def self.all
    @@all
  end

  def artists
    Artist.all.select{ |a|
      a.genres.include?(self)
    }
  end
end
