require 'pry'
class Owner
  

  @@all = []

  def self.all
    @@all
  end
  
  def self.count
    @@all.size
  end

  def self.reset_all
    @@all = []
  end

  attr_reader :name, :species

  def initialize(name, species = "human")
      @name = name
      @species = species
      @@all << self
  end

  def say_species
     "I am a #{@species}."
  end

  def cats
    Cat.all.select {|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end

  def buy_cat(cat)
    Cat.new(cat,self)
  end
  
  def buy_dog(dog)
    Dog.new(dog,self)
  end


  def walk_dogs
    dogs.each {|dog| dog.mood = "happy"}
    
  end

  def feed_cats
    cats.each {|cat| cat.mood = "happy"}
  end


  def sell_pets
    Cat.all.each do |cat|
      if cat.owner == self
        cat.owner = nil
        cat.mood = "nervous"
      end
    end
    Dog.all.each do |dog|
      if dog.owner == self 
        dog.owner = nil
        dog.mood = "nervous"
      end
    end
  end

  def list_pets
    return "I have #{self.dogs.size} dog(s), and #{self.cats.size} cat(s)."
  end

end