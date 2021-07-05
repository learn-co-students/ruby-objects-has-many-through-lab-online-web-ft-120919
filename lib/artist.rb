require 'pry'

class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    # returns all songs associated with this Artist
    def songs
        Song.all.select do |song| 
            song.artist == self
        end
    end

    # given a name & genre, creates a new song associated with that artist
    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    # has many genres, through songs (FAILED - 3)
    def genres
        songs.map { |song| song.genre }
    end

end