m = "Merhaba"
puts "#{m} onur" # Merhaba onur
puts '#{m} onur' # #{m} onur
puts "Saat: #{Time.now}"

puts "Merhaba\nDünya"

=begin
\n 	Yeni satır (0x0a)
\s 	Boşluk (0x20)
\r 	Satır Başı (0x0d)
\t 	Tab Karakteri (0x09)
\v 	Dikey Tab (0x0b)
\f 	Formfeed (0x0c)
\b 	Backspace (Bir geri) (0x08)
\a 	Bell/Alert (Uyarı) (0x07)
\e 	Escape (0x1b)
\nnn 	Octal, 8'lik değer
\xnn 	Hexadecimal, 16'lık değer
\unnnn 	Unicode: U+nnnn (Ruby 1.9+)
\cx 	Control-x
\C-x 	Control-x
\M-x 	Meta-x
\M-\C-x 	Meta-Control-x
\x 	x'in kendisi (\" çift tırnak demektir.)
=end

%{Merhaba Dünya  ?}
#Hızlıca Array üretmeyi sağlar:
 p d=%w{foo bar baz}
# %i İçinde Symbol olan Array üretir:
%i{foo bar baz}

%x{cd d:}

mesaj =<<END
selam
der
dere
END
puts mesaj

sacma=[<<BIR,<<Iki]
sade
BIR
sadew
Iki

puts sacma

 p "merhaba %s de" %"cema"

"Merhaba!" * 3 # => "Merhaba!Merhaba!Merhaba!"


p a = "Merhaba"
p a << " dünya" # => "Merhaba dünya"
p a # => "Merhaba dünya"
p a.concat(33) # => "Merhaba dünya!"
p a << 33 # => "Merhaba dünya!!"

p  "sds"<=>"sds"



m = "Merhaba Dünya"
m[0]         # => "M"  # 0.karakter
m[0, 2]      # => "Me" # 0'dan itibaren 2 karakter
m[0..4]      # => "Merha" # range, 0'dan 4 dahil
m[-1,]       # => "a" # son karakter
m[-13..-1]   # => "Merhaba Dünya" # sondan başa
m[15, 1]     # => nil # olmayan indeks
m[/(?<sesli>[aeiou])/, "sesli"] # => "e" # regexp
m["Merhaba"] # => "Merhaba" # metni bul
m["vigo"] # => nil # olmayan metin

m = "merhaba"
m.slice(2,5) # => "rhaba"


"merhaba".to_i   # => 0 # integer'a çevirdi
"merhaba".to_f   # => 0.0 # float'a çevirdi
"5".to_i          # => 5
"1.5".to_f        # => 1.5
"merhaba".to_s    # => "merhaba" # string
"merhaba".to_str  # => "merhaba" # string
"merhaba".to_sym  # => :merhaba # symbol
"merhaba".to_r    # => (0/1) # Rasyonel sayı
"0.2".to_r        # => (1/5) # Rasyonel sayı
"merhaba".to_c    # => (0+0i) # Kompleks sayı
"1234".to_c       # => (1234+0i)
"merhaba".to_enum # => #<Enumerator: "merhaba":each>
# # Enumeratör'e çevirdi

"Selam millet nasıl sınız?".split # => ["Selam", "millet", "nasıl", "sınız?"]
"Selam millet-nasıl sınız?".split("-") # => ["Selam millet", "nasıl sınız?"]
"A takımı: 65 B takımı: 120".split(/ +\d+ ?/) # => ["A takımı:", "B takımı:"]
"1,2,3,4,5".split(",") # => ["1", "2", "3", "4", "5"]

"merhaba".each_byte {|c| puts c }
"Merhaba\nDünya\nNasıl sın?".each_line {|l| puts l }


