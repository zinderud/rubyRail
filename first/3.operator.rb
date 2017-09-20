
a = []             # Bu bir dizi / Array
a.[]=5,"Merhaba"   # 0 indekli, 5.eleman Merhaba olsun
p a                # [nil, nil, nil, nil, nil, "Merhaba"]


str = "Merhaba Dünya"

class String
  def -@
    reverse
  end
end

p str     # "Merhaba Dünya"
p -str    # "aynüD abahreM"