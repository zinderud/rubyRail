class GoodDog
  attr_accessor :name
  def initialize(name)
    @name=name
  end
  def speak
    "#{@name} says haw hav"
  end
  def sno
    "no"+"dsadfs-fsdf-32-dfs34-3".split('-').last
  end
  def self.what
    "! I'm a Gooddog class"
  end
end

ss=GoodDog.new("kucu")
puts ss.speak
puts ss.name
ss.name="neki"
puts ss.name
p GoodDog.what

