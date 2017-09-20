=begin
  Ruby Duck Typing şeklinde çalışır  
 Duck Typing demek şudur; Eğer ördek gibi yürüyorsa, ördek gibi ses çıkartıyorsa e o zaman bu bir Ördektir! İngilizcesi;

    When I see a bird that walks like a duck and swims like a duck and quacks like a duck, I call that bird a duck
    
Yani atama yapmadan önce ne tür bir değer ataması yapacağımızı belirtmemize gerek yok. Ruby zaten a = 1 dediğimizde, " değer Fixnum türünde" diye değerlendirir.
=end
a=22
puts "toplam #{a} adet ürün kaldı" 
satilan=2
puts "toplam #{a-satilan} adet ürün kaldı"


=begin
Bölgesel ya da Yerel değişkenler, bir scope içindeki değişkenlerdir. 

=end

deger="sadece"
def dese ismini
    deger="sende desen #{ismini}"
end

puts dese "öyle bir gecer zaman ki"
puts deger
=begin
program çalıştığı zaman  deger değişkeni sadece olarak atanmaktadır
sende desen öyle bir gecer zaman ki
sadece
=end

$ssa="desende"

def desede ismini
     deger="sende  #{ismini} #{$ssa}"
     puts deger
end 

desede "sade"
=begin
$ işaretiyle başlayan tüm değişkenler Global değişkenlerdir. Kodun herhangi bir yerinde kullanılabilir ve erişilebilir.
=end

yas=22
Yas=22
puts defined?(yas)
puts defined?(Yas)
=begin
Constants (Sabitler)

Sabit Kural olarak mutlaka BÜYÜK HARF'le başlar 
Ruby'de ilginç bir durum daha var. Constant'lar mutable yani değiştirilebilir.
=end
Yas=22
Yas=23 #ama warning yani uyarı mesajı aldık!

puts defined?(Yas)
puts "#{Yas}"

a,b,sade,d="saer",2,3,227
puts a
puts b
puts sade
puts d

#instance variable
class Kisi
    attr_accessor :name
    def initialize(name)
        @name=name
        
    end

    def selamla 
        "selam #{@name}"
    end
end

k=Kisi.new("onur")
puts k.selamla
puts k.name
 
