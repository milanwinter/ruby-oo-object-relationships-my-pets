class Dog
  
  @@all = []

  def self.all
    @@all
  end

  attr_reader :name
  attr_accessor :mood, :owner

  def initialize(name,owner,mood = "nervous")
    @name,@owner,@mood = name, owner, mood
    @@all << self
  end













end