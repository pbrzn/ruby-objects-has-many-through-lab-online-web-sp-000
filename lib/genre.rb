class Genre
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name=name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select {|song| song.genre == self}
  end
  
  def artists
    artist_array=[]
    self.songs.each {|song| artist_array << song.artist}
    artist_array
  end
end