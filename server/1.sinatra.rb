#gem install sinatra  ile sinatrayı yükle


require 'sinatra'
require 'sqlite3'
require 'json'


# listele

get '/urun' do
  begin
    urun=Array.new
    db=SQlite3::Database.open "dene.db"
    db.result_as_hash=true;
    rows=db.execute "Select urun_id ,isim from urun"

    rows.each do |row|
        urun<< Urun.new(row['urun_id'],row['isim'])
    end
    urun.to_json()
  rescue SQLite3::Exception => excp
    excp
  ensure
    db.close if db
  end

end

class Urun
  attr_accessor :id
  attr_accessor :isim
  def initialize(id,isim)
    @id=id
    @isim=isim
  end
  def to_json(*a)
    {
        "json_class"=>self.class.name,
        "data"=> {"id"=>@id,"isim"=>@isim}
    }.to_json(*a)
  end
  def self.json_create(object)
    new(object["data"]["id"], object["data"]["isim"])
  end

  def to_s
    "#{@id}-#{isim} "
  end


end
