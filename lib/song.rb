require "pry"

class Song
    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(file)
        artist, song = file.split(" - ") #?assigns first two elements to artist and song
        new_song = self.new(song)
        new_song.artist_name = artist
        new_song
    end

    def self.artist_name(name)
        self.artist = Artist.find_or_create_by_name(name)
        artist.add_song(self)
    end 

end

# p new_by_filename("aston - tubetube - hipshots.mp3")