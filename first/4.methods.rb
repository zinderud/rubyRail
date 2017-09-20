def merhaba
    "merhaba"
end
p merhaba
 

#Eğer bir method’un son karakteri ? ise bu o method’un true ya da false yani Boolean bir değer döneceğini ifade eder.
a="sade"
b="sadec"

 p a.eql?(b)

 #Eğer method’un son karakteri ! (Ünlem) ise; bu, o method’un tehlikeli bir iş yaptığını anlatır. Yani ilgili nesnenin kopyalanmadan direk üzerinde değişiklik yapacağı anlamına gelir


 a = "deneme"
 
 a.upcase   # => "DENEME"
 a          # => "deneme"
 
 a.upcase!  # => "DENEME"
 a          # => "DENEME"

 #Eğer bir method = ile bitiyorsa, bu, o method’un bir setter method’u olduğu anlamına gelir ve Class ile ilgili bir konudur.

 class Kisi
    def adres=(adres)
        @adres=adres
    end
end

k=Kisi.new
p k
 k.adres="adres değeri"
p k


    
 #Method argümanlarına varsayılan değerler atayabilirsiniz
 def varsay (ki="de")
    "merhaba #{ki}"
 end
 p varsay

 #Değişken Sayıda Argümanlar (Variable-Length Arguments)

 def merhaba(*isimler)
    "Merhaba #{isimler.join(" ve ")}"
  end 

  merhaba("sade", "ek", "reçel")  

=begin
    
    return kullanmadan method’dan geri dönüş yapılabilir
    Parantez kullanmadan method tanımlanabilir
    Parantez kullanmadan method çağırılıp parametre geçilebilir.
    ? ile biten method mutlaka true ya da false döner.
    ! ile biten orijinal değeri mutlaka değiştirir.
    = ile biten setter'dır.
  
=end