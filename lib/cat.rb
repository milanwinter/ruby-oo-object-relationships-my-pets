class Cat
  
  
  @@all = []

  def self.all
    @@all
  end

  attr_reader :name
  attr_accessor :mood, :owner

  def initialize(name, owner, mood = "nervous")
    @name = name
    @owner = owner
    @mood = mood
    @@all << self
  end

















end