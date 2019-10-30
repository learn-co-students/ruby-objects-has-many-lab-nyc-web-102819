require 'pry'

class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        Song.all
    end

    def add_song(song)
        
        # @@all << song
        song.artist = self
        @songs << song
    end

    def add_song_by_name(song)
        new_song = Song.new(song)
        new_song.artist = self
        @songs << new_song
        @@all << new_song
        
    end

    def self.song_count
        Song.all.length
    end
end
