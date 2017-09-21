
#downto
10.downto 1 do |n|
   p n
   end
1000.downto 1 do |n|
    puts n if n%7==0 && n%9 ==0
  end
#upto
1.upto(23) do |ß|
    p ß
end

#times
4.times {puts"işte"}
3.times {|d| p "#{d}. sırayla"}
#step
total=0
1.step 100,2 do |n|
  total+=n
end
puts total

#while 
sayac=0
while sayac<12 do
    p sayac
    sayac+=1
end
#until
counter=0
until counter>10 do
  print counter," "
   counter+=1
end

#loop 
loop do
    p   "yalnış şifre"
    sifre=gets.chomp()
    break if sifre=="sifre"
end
puts "ne desem"