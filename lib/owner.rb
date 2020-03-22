class Owner
  
  @@all = []
  
  attr_reader :name, :species
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
  
  def say_species
    "I am a #{self.species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats 
    cats = []
    
    Cat.all.each do |cat| 
     if cat.owner.name == self.name
       cats << cat
     end
   end
   cats
  end
  
  def dogs
    dogs = []
    
    Dog.all.each do |dog| 
     if dog.owner.name == self.name
       dogs << dog
     end
    end
    dogs
  end
  
  def walk_dogs
    self.dogs.each do |dog| 
      dog.mood = "happy"
    end
  end
  
  def feed_cats
    self.cats.each do |cat| 
      cat.mood = "happy"
    end
  end
  
  def buy_cat(cat_name)
    cat = Cat.all.find { |cat| cat.name == cat_name }
    
    self.cats << cat
    cat.owner = self
  end
  
  def list_pets
    pets = []
    Dog.all.each do |dog| 
     if dog.owner.name == self.name
       pets << dog
     end
     
     Cat.all.each do |cat| 
     if cat.owner.name == self.name
       pets << cat
     end
     pets
  end 
end
end