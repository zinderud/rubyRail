require 'sqlite3'
begin
  db=SQlite3::Database.open "Dene.db"
  db.execute "create table if not exists Product(product_id integer primary key autoincrement,title text not null,list_price int not null)"
  db.execute "insert into Product (title,list_price) values ('elma',10)"
  select=db.prepare "Select product_id,title,list_price from Product"
  resultSet=select.execute

  resultSet.each{ |row|
    puts row.join "\s"
  }
rescue SQLite3::Exception => excp
  puts excp
ensure
  select.close if select
  db.close if db

end