a=2
b=23
if a==5 && b==21
  puts "devam"
else
  puts "hata"
end

# konuşma diline yakın
 puts " selam" if a==2


if a == b
  puts "a, b'ye eşit"
elsif a < b
  puts "a, b'den küçük"
else
  puts "a, b'ten büyük"
end


puts "eşit değil" unless a==b


i = 0
while i < 5 do
  puts "i = #{i}"
  break if i == 3
  i += 1
end

durun=3
case  durun
  when 0
    p  "berbat"
  when 1
    "kotü"
  when 2
    p "ort"

  when 3
    p "super"

end


for i in 1..10
  p "i = #{i*i}"
end

#Ternary Operatörü
sade=2

olsa =sade==2 ? "ise":"değilse"

p olsa

#begin ve end kodun çalışmasından önceye ve sonraya bir ek takabiliyoruz.

BEGIN {puts "başlama saati #{Time.now.to_s}"}
END { puts "bitiş zamanı #{Time.now.to_s}"}

def selene sade
    "merhaba #{sade}"
end
p selene "hadi"
sleep 2