class GoodDog
  def initialize(name)
    @name=name
  end
  def get_name
    @name
  end
  def set_name(name)
    @name= name

  end
  def speak
    "#{@name} says hav hav"
  end
end
ss=GoodDog.new("Kucu")
puts ss.speak
puts ss.get_name

ss.set_name="kocabaş"
puts ss.get_name