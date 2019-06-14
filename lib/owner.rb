class Owner
  # code goes here
  
  attr_accessor :name
  attr_reader :species
  @@all = []
  
  def initialize(name, species = "human")
    @name = name
    @species = species
    @pets = {fishes: [], dogs: [], cats: []}
    @@all << self
  end
  
  def self.all
    @@all  
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def say_species
    "I am a #{self.species}."
  end
  
end