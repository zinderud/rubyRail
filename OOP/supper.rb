class Animal
  def speak
    "Hello"
  end
end
class Dog <Animal
  attr_accessor :name

  def initialize(n)
    self.name=n
  end
  def speak
   super+ "#{self.name} says arf"
  end
end
class Cat <Animal

end

dd=Dog.new("kuçu")
cc=Cat.new
p dd
p cc
