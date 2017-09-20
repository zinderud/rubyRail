uyeler=["a","ew","de"]
uyeler.each do |uye|
    puts uye
end

#aynu kod
uyeler=["a","ew","de"]

uyeler.each{|uye| puts uye}



def test_function
    yield
  end
  
  test_function {
    puts "Merhaba"
  }

  test_function do
    puts "Ben block içinden geliyorum"
  end
  test_function do
    [1, 2, 3, 4].each do |n|
      puts "Sayı #{n}"
    end
  end

  def test_function
    if block_given?
      yield
    else
      puts "Lütfen bana block veriniz!"
    end
  end
  test_function


  def numerator
    yield 10
    yield 4
    yield 8
  end
  
  numerator do |number|
    puts "Geçilen sayı #{number}"
  end

=begin
  Örnekte, yield block içinden gelen kod bloğunu bir fonksiyon gibi çağırıyor, çağırırken de bloğa parametre geçiyor. Dikkat ettiyseniz kaç tane yield varsa o kadar kez block çağırıldı (call edildi_) 
=end


5.times { puts "Merhaba" }
5.times { |i| puts "Sayı #{i}" }
5.times do |i|
  puts "Sayı #{i}"
end