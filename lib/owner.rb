class Owner
  # code goes here
  
  attr_accessor :name, :pets
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
  
  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end
  
  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end
  
  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end
  
  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  
  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  
  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end
  
  def sell_pets
    self.pets.each do |species, list|
      list.each do |animal|
        animal.mood = "nervous"
      end
    end
    @pets.clear
  end
  
  def list_pets
    dogs = self.pets[:dogs].length
    cats = self.pets[:cats].length
    fish = self.pets[:fishes].length
    
    "I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end
  
end