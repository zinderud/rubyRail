module  Speak
  def speak(sound)
    puts "#{sound}"
  end
end
class Dog
include Speak
  def initialize
    puts  "This dog object initialized"
  end
end
spark=Dog.new
spark.speak("hav hav")

