class Artist

    attr_accessor :name, :song, :genre


    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre) #creates a new song #song should know it belongs to the artist
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def genres
        songs.collect do |song| 
            song.genre
        end
    end



end