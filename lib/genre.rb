class Genre 
    attr_accessor :name
    @@all = []

    #has a name
    def initialize(name)
        @name = name
        @@all << self
    end
    # has many songs
    def songs
        Song.all.select{|song|song.genre == self}
    end

    # knows about all genre instances
    def self.all
        @@all
    end

    #has many artists, through songs
    def artists
        Song.all.collect{|song|song.artist}
    end

end