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

  def songs
    @@all.each do |song|
      song.artist
  end

end
