mesaj = "Merhaba"
p mesaj.class # => String
p mesaj.class.superclass# => Object
p mesaj.class.superclass.superclass # => BasicObject
p mesaj.class.superclass.superclass.superclass # => nil


# nesne metotları boş bir nesen oluşturalaım
 o=Object.new
p o
p o.__id__
p o.object_id
=begin
yaptığımızda, oluşan nesnenin hafızada
unique (yani bundan sadece bir tane) bir identifier'ı
(kabaca buna kimlik diyelim) yani ID'si olduğunu görürüz. __id__ yerine
 object_id yani o.object_id şeklinde de kullanabiliriz.
=end

p s =String.new("selam")
p s.object_id
p s.methods
p s.method(:upcase).call
p s.is_a?(String)
p s.kind_of?(String)