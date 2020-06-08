class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def self.all
    @@all 
  end 
  
  def self.create 
    song = self.new
    song.save 
    song
  end
  
  def save
    self.class.all << self
  end
  
  def self.new_by_name(name)
    song = self.new 
    song.name = name
    song
  end 
  
  def self.create_by_name(name)
    s = self.create  
    s.name = name
    s
  end 
  
  def self.find_by_name(name)
    @@all.each do |song| 
      if song.name == name
        return song
      end
    end
    nil
  end
  
  def self.find_or_create_by_name(name)
       self.find_by_name(name) || self.create_by_name(name)
  end   
  
  def self.alphabetical
    @@all.sort_by {|n| n.name}
  end 
  
  def self.new_from_filename
    
  end 
end 


# binding.pry 









