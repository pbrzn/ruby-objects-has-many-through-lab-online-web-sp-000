class Artist
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name=name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(song_name, genre)
    Song.new(song_name, self, genre)
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def genres
    genre_array=[]
    self.songs.each {|song| genre_array << song.genre}
    genre_array
  end
end