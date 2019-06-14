class Cat
  # code goes here
  
  attr_reader :mood, :name
  
  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end
  
end