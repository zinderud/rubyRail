class Merhaba
  def initialize(isim)
    @isim = isim
  end

  def selam_sana
   p "Selam sana, #{@isim}"
  end
end

hey = Merhaba.new "murat"
hey.selam_sana #

 hayda = Merhaba.new "murat"
p hayda