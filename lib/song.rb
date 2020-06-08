
class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def self.create 
    song = self.new 
    @@all << song
    name
  end
  
  def save
    self.class.all << self
  end
end 














class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
