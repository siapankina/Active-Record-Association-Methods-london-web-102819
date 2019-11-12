class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    all_songs = Song.select { |s|
      s.genre == self
    }.length
    # self.songs.count

    # return the number of songs in a genre
  end

  def all_artists
    all_songs = Song.select { |s|
      s.genre == self
    }
    all_songs.map { |s|
      s.artist
    }
    # return the number of artists associated with the genre
  end

  def artist_count
    all_artists.length
    # self.artists.count
  end

  def all_artist_names
    all_artists.map { |a|
      a.name
    }
    # self.artists.collect do|t|
    # t.name

    # return an array of strings containing every musician's name
  end
end
