class Bir
  def ez()
    puts  "Bir ez()"
  end
  def im()
      puts  "Bir im"
  end
end
class Iki
  def initialize()
    @bir=Bir.new()
  end
  def ez()
   @bir.ez()
  end
  def im()
    @bir.im()
  end
end

ders=Iki.new()

ders.ez
ders.im