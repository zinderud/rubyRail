require 'drb/drb'

DRb.start_service

ro=DRbObject.new_with_uri("druby://localhost:4445")
name=""
while name!="exit"
  p "isim"
  name =gets.chomp
  ro<<name
  ro.each {|o| p o}
end