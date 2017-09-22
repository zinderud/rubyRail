Hash.class                                  # => Class
Hash.class.superclass                       # => Module
Hash.class.superclass.superclass            # => Object
Hash.class.superclass.superclass.superclass # => BasicObject
Hash.class.superclass.superclass.superclass.superclass # => nil



h=Hash.new("das")
p h

h[:isim]="ali"
p h

p h[:negelecek] #das eğer default değer olmasaydı

c=Hash.new
p c[:sa]

ah = Hash.new { |hash, key| hash[key] = "User: #{key}" }

p ah["sade"]           # => "User: sade"


Hash.try_convert({"user_count"=>5})   # => {"user_count"=>5}
Hash.try_convert("user_count=>5")     # => nil


h={da:2.3,ss:32}
p h.keys


a = [ "a", "b" ]
c = [ "c", "d" ]
h = { a => 100, c => 300 } # => {["a", "b"]=>100, ["c", "d"]=>300}

h={da:2.3,ss:32}
h.shift
p h
h.delete(:ss)



# invert Hash'in key'leri ile value'lerini yer değiştirmek için kullanılır.

h = { "a" => 100, "b" => 200 } # => {"a"=>100, "b"=>200}
h.keys                         # => ["a", "b"]
h.invert                       # => {100=>"a", 200=>"b"}
h1 = { "a" => 100, "b" => 200 }
h2 = { "x" => 1, "y" => 2, "z" => 3 }
h1.merge(h2) # => {"a"=>100, "b"=>200, "x"=>1, "y"=>2, "z"=>3}
h1           # => {"a"=>100, "b"=>200}

h1.update(h2) # => {"a"=>100, "b"=>200, "x"=>1, "y"=>2, "z"=>3}


h = { "a" => 100, "b" => 200, "c" => 0 }
h.each { |key, value| puts "key: #{key}, value: #{value}" }
h.each_pair { |key, value| puts "key: #{key}, value: #{value}" }


h = { "a" => 100, "b" => 200, "c" => 0 }

# 2'li dilimlere ayırdık
h.each_slice(2){ |s| puts "slice: #{s}" }


h = Hash.new {|obj, key| obj[key] = key * 4 } # => {}
h[1] # => 4
h[2] # => 8
h    # => {1=>4, 2=>8}