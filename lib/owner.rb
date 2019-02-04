class Owner
  # code goes here
  
  attr_reader :species
  attr_accessor :name, :pets, :owners
  
  @@all = []
  @@count = 0
  
  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats=> []}
    @@all << self
    @@count += 1
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
    
  end
  
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
    
  end
    

  def self.all
    @@all
  end
  
  def self.count
    @@count
  end
  
  def self.reset_all
    @@count = 0
  end
end