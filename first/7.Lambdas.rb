
#argüman olarak gecirilen parametre sayısı önemli

yaz=lambda{|txt| puts txt}

yaz.call("merhaba") #calışır
# yaz.call("merhaba","dfsf") çalışmaz ve hata
# ArgumentError: wrong number of arguments (2 for 1)

l=lambda{"sade"}
puts l.call

l=lambda do |isim|
  if isim=="ali"
      "merhaba ali "
  else
      "merhaba sana #{isim}"
  end
end
puts l.call("ali")
puts l.call("veli")

# son olarak

elamanlar=["ayşe","fatma","hayriye"]
yazsan =lambda{|item| puts item}
elamanlar.each(&yazsan)