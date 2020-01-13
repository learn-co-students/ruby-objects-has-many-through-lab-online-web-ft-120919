# frozen_string_literal: true

# genre>song>artist
class Genre
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def songs
    Song.all.select { |songs| songs.genre == self }
  end

  def artists
    self.songs.collect do |song|
      song.artist
    end
  end

end