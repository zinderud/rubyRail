require 'drb/drb'
obj=[]

DRb.start_service("druby://localhost:4445",obj)

p "server dinlemde kapatmak için ctrl+c"

while 1==1
  sleep 5
  p obj
end