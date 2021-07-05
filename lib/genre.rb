require 'pry'
class Genre

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    # has many songs
    def songs
        Song.all do |song| 
            song
        end
    end

    # has many artists, through songs
    def artists
        songs.map do |song|
            song.artist
        end
    end

end