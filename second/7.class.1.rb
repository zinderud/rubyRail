
#
$dogalLimit=500 #globaldeğişken
#£
class DogalController
  def arttir(value)
    $dogalLimit=$dogalLimit+value
  end
  def azalt(value)
    $dogalLimit=$dogalLimit-value
  end
end


#3
class Oyuncu
  #class variable
  @@osayac=0
  def initialize(isim,limit)
    @isim=isim
    @limit=limit
    @@osayac+=1
  end

  def isim
    @isim
  end
  def limit
    @limit
  end
  def osayacSay
    @@osayac
  end
  def limitdurmu
    @limit<$dogalLimit
  end
  def run()
    puts "Run #{@isim} run"
  end

  def to_s()
    "#{@isim}{#{@limit}}"
  end
end
