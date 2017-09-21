soz="söz ucar mı?"
 
puts soz.length #metin uzunluğunu bulma
puts soz.reverse #metni ters çevirme
puts soz.capitalize #kelimelerin ilk harflerini büyütme
puts soz.upcase #büyük harfe çevirme
puts "ABC".next #bir sonraki kelime
puts "is empty #{soz.empty?}" #string empty?

dese="ucun kuşlar ucun burda vefa yok"
case dese
when /vefa/
  puts "semt ismi artık vefa"
end
 