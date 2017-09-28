class Player
  def initialize(name,poz)
    @name=name
    @poz=poz

  end
  def move
    puts "#{@name} is moving"
  end
end

sade=Player.new("sade","d")
sade.move

def sade.Jump(level)
  puts "#{@name} is Jump to level #{level}"
end
sade.Jump(32)

