class Song
    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}

    attr_accessor :name, :artist, :genre

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1

        @@artists << artist
        @@genres << genre 

    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        result = {}
        @@genres.each do |item|
            if result[item]
                result[item] += 1
            else
                result[item] = 1
            end 
        end
        result
    end

    def self.artist_count
        result = {}
        @@artists.each do |item|
            if result[item]
                result[item] += 1
            else
                result[item] = 1
            end 
        end
        result
    end
end