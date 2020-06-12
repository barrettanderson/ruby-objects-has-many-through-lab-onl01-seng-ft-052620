class Genre
  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    song.map do |song|
      songs.artist
    end
  end

  def self.all
    @@all
  end

end
