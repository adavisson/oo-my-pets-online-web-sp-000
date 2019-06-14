class Owner
  # code goes here
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all  
  end
  
  def self.count
    @@all.length
  end
  
end