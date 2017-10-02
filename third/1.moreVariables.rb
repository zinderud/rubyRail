my_name='ahmet Yusuf'
my_age='8'
my_heigth=123
my_weigth=25
my_eyes='brown'
my_teeth='white'
my_hair='brown'

p "Let's talk about #{my_name}."
p "He's #{my_heigth} m tall."
p "He's #{my_weigth} kg heavy."
p "Actualy that's not heavy."
p "He's got #{my_eyes} eyes and #{my_hair} hair."
puts "His teeth are usually #{my_teeth} depending on the gum."

p   "ok"

p "How old are you"
age=gets.chomp.to_i
print "how tall are you"
heigth=gets.chomp

puts "so , you're #{age},#{heigth} tall  "


=begin
first, second, third = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"4
=end