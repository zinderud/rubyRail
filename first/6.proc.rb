def carp(with)
    return Proc.new{|sayi| sayi*with}
end

carp_2=carp(3)
p carp_2 #<Proc:0x0000000002f20498@d:/Arsiv/ruby/rubyRail/first/tempCodeRunnerFile.rb:2>
puts carp_2.class # Proc a sah,p,z hadi kullanalım


p carp_2.call(33)
