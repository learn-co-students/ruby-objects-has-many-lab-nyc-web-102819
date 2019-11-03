class Artist
    attr_accessor :name, :song, :songs

    @@artist = []

    def initialize(name)
        @name = name
        @@artist << self
    end

    def self.all
        @@artist
    end

    def songs
        Song.all
    end

    def add_song(song)
        Song.all << song
        song.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        add_song(song)
    end

    def self.song_count
        Song.all.uniq.count 
    end
end