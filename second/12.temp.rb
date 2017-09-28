require 'tempfile'

f=Tempfile.new('gecicidosya')
f.write "bir şeyler"
f<<Time.now
f<<"-"
puts f.rewind
puts f.read
puts f.path
sleep(90)
f.close
