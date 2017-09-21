def carp(with)
    return Proc.new{|sayi| sayi*with}
end

carp_2=carp(3)
p carp_2 #<Proc:0x0000000002f20498@d:/Arsiv/ruby/rubyRail/first/tempCodeRunnerFile.rb:2>
puts carp_2.class # Proc a sah,p,z hadi kullanalım


p carp_2.call(33)



# mu metot ile array'ın her elemanını okuyor ve karaesini alıyoruz
#burada * işareti ise splat özelliği geçilen parametre grubunu array olak değerlendir demek
topla=Proc.new{|*sayi| sayi.collect {|n| n**2}}

 p topla.call(3)

p topla.call(2,4,5,44)