module MyStuff
  def MyStuff.apple()
    puts "asa!"
  end


  SA = "Ld"
end

MyStuff.apple()
puts MyStuff::SA #küçük harf hata


class Sadece
  def initialize()
    @bir="birtane"
  end
  attr_reader :bir
  def apple()
    puts "nesa"
  end

end

ere=Sadece.new()
ere.apple()
p ere.bir
