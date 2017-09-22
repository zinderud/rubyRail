a=[]
p a.class

ab = Array.new(5)  # içinde 5 eleman taşıyacak Array oluştur
ab # => [nil, nil, nil, nil, nil]
aylar = Array.new(12, "ay") # 12 eleman olsun ve hepsi "ay" olsun
aylar # => ["ay", "ay", "ay", "ay", "ay", "ay", "ay", "ay", " ay", "ay", "ay", "ay"]wwwww


##Ruby'de her nesnenin bir ID'si ve HASH değeri vardır.
p [1,2].hash
p [3].__id__
p [3].object_id

p dizi=Array.new(22){|s| s=s*22}
#yda

ds=Array.new(11) do |x|
  x=x*3
end
p ds


sayki=Array.[](1,2,3)

p sayki

yillar=Array(1999..2017)
p yillar
p yillar.values_at(3)
p yillar.values_at(3,55)

p yillar.at(3)
p yillar.rindex(2011)
p yillar.count
p yillar.empty?
yillar.include?(2011)
yillar.member?(2)

a = [1, 2, 3, 4]
b = [3, 1, 10, 22]
p a & b # => [1, 3]

p a+b
p a-b
p a|b
a.push( 2)
a << "s"
p a

a = [1, 2, 3]
a.concat([4, 5, 6])
a.unshift("başına")
p a

a.replace([2])
p a


[1, 2, 3, 4] <=> [1, 2, 3, 4] # => 0 # Eşit
[1, 2, 3, 4] <=> [1, 2, 3]    # => 1 # İlk değer büyük
[1, 2, 3] <=> [1, 2, 3, 4]    # => -1 # İlk değer küçük


ss=[1,3,45,6,2,33,3,333,3332,332,3232,3232,3232,3]
p ss
ss.pop
p ss
#pop'a parametre geçersek son n taneyi uçurmuş oluruz:
ss.pop(2)
p ss
ss.shift
p ss

ss.delete(45)
p ss




# not 50'den küçükse sil :)
notlar = [40, 45, 53, 70, 99, 65]

notlar.delete_if{|d| d<50}
p notlar

# denklik
[1, 2, 3, 4] == [1, 2, 3, 4]   # => true
[1, 2, 3, 4] == ["1", 2, 3, 4] # => false
[1, 2, 3, 4] == [1, 2, 3]      # => false

# assoc ve rassoc Elemanları Array olan bir Array içinde, ilk değere göre yakalama yapmaya yarar.

    a = ["renkler", "kırmızı", "sarı", "mavi"]
b = ["harfler", "a", "b", "c"]
c = "foo"

t  = [a, b, c]
t                 # => [["renkler", "kırmızı", "sarı", "mavi"], ["harfler", "a", "b", "c"], "foo"]
t.assoc("renkler") # => ["renkler", "kırmızı", "sarı", "mavi"]
t.assoc("foo")     # => nil

t.rassoc("kırmızı")   # => ["renkler", "kırmızı", "sarı", "mavi"]

[1, 2, 3, 4].slice(0, 2) # => [1, 2] # 0.dan itibaren 2 tane
[1, 2, 3, 4].slice(2..4) # => [3, 4] # 2.den itibaren 2 tane

["Uğur", "Yeşim", "Ezel", "Ömer"].find { |n| n.length > 3 } # => "Uğur"
["Uğur", "Yeşim", "Ezel", "Ömer"].find_all { |n| n.length > 3 } # => ["Uğur", "Yeşim", "Ezel", "Ömer"]
["a", "b", "c", "d", "e"].index("e")

a = [1, 2, 3]
a.clear # => []
a       # => []

a = [1, 2, 3, 4, 5]
a.reverse # => [5, 4, 3, 2, 1]

# sample Array'den random olarak eleman almaya yarar. Eğer parametre geçilirse geçilen adet kadar random eleman döner.

a = [1, 2, 3, 4, 5]
a.sample    # => 3

# shuffle Array'in içindeki elemanların index'lerini karıştırı :)

a = [1, 2, 3, 4, 5]
a.shuffle # => [5, 4, 1, 3, 2]
a.shuffle # => [1, 2, 3, 5, 4]
a = ["Uğur", "Yeşim", "Ezel", "Ömer"]
a.fill("x")       # => ["x", "x", "x", "x"] # tüm elemanları x yaptı
a = [1, 2, 3, 4, 5]
a.fill { |i| i * 5 }     # => [0, 5, 10, 15, 20]
a                        # => [0, 5, 10, 15, 20]
a = [1, 2, 3, 4, 5]

a.rotate    # => [2, 3, 4, 5, 1] # 1 kaydırdı
a.rotate(2) # => [3, 4, 5, 1, 2] # 2 kaydırdı, ilk 2 elemanı sona koydu!


a = [ 4, 5, 6 ]
b = [ 7, 8, 9 ]

[1, 2, 3].zip(a, b)   # => [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
[1, 2].zip(a, b)      # => [[1, 4, 7], [2, 5, 8]]
a.zip([1, 2], [8])    # => [[4, 1, 8], [5, 2, nil], [6, nil, nil]]



(1..10).to_a        # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# 2'den 5'e kadar (5 dahil)
(1..10).grep 2..5   # => [2, 3, 4, 5]


p a = [1, 2, 3, 4, 5]
p a.collect { |i| i * 2 }       # => [2, 4, 6, 8, 10]
p a.collect { |i| "sayı #{i}" }

p ["Uğur", "Yeşim", "Ezel", "Ömer"].map { |isim| "İsim: #{isim}" } # => ["İsim: Uğur", "İsim: Yeşim", "İsim: Ezel", "İsim: Ömer"]
p ["Uğur", "Yeşim", "Ezel", "Ömer"].collect { |isim| "İsim: #{isim}" } # => ["İsim: Uğur", "İsim: Yeşim", "İsim: Ezel", "İsim: Ömer"]



[1, 2, 3, 10, 15, 20].select { |n| n % 2 == 0 }



p a = [1, 2, 3]
p a.combination(1).to_a
p a.combination(2).to_a
p a.combination(3).to_a
p a.permutation(1).to_a
p a.permutation(2).to_a
p a.permutation(3).to_a

p a.cycle(2).to_a



notlar = [40, 45, 53, 70, 99, 65]
notlar.drop_while {|notu| notu < 50 }   # => [53, 70, 99, 65]
notlar = [40, 45, 53, 70, 99, 65]
notlar.take_while { |notu| notu < 50 } # => [40, 45]
p a.each { |k| puts "k: #{k}" }