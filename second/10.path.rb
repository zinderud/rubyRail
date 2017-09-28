require 'pathname'

yol=Pathname.getwd

yol.each_child{|f| puts f}

pn=Pathname.new(sade.say)
puts "\n#{pn.basename} icin dosya boyutu #{pn.size} byte\n"
puts "Dosyanin tam yolu #{pn.expand_path}"
puts "Dosya uzantisi #{pn.extname}"
puts "Dosya icerigi\n"
pn.each_line {|line| puts line }