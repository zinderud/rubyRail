require 'socket'
server =TCPServer.new('localhost',8011)
begin
  while (session=server.accept)
    request=session.gets # gelen talabin ilk satırımı oku
    STDERR.puts request #loglar consola yazılacak
    response="<b2>Merhaba</b2>"
    session.print "HTTP/1.1 200 OK\r\n" +
                      "Content-Type: text/html\r\n" +
                      "Content-Length: #{response.bytesize}\r\n" +
                      "Connection: close\r\n"
    session.print "\r\n"    #HTTP protokolu geregi bir alt satira gecilmesi gerekiyor
    session.print response #asil body mesaji yazdiriliyor
    session.close #sokect baglantisi kapatiliyor
  end
rescue Errno::EPIPE
  STDERR.puts "Bağlantı koptu"
end
