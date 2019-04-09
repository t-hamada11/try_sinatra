#これ以外のgemは、Gemfileに書く
require 'rubygems'
require 'bundler'

#Gemfileに記載してあるgemを取ってくるようになる
Bundler.require

#データベース接続
set :database, {adapter: "sqlite3", database: "foo.sqlite3"}

#clientsテーブルからClientモデルクラスを生成
class Client < ActiveRecord::Base
  validates_presence_of :owner_name, :phonetic_name, :pet_name, :pet_type

end


get "/" do
  erb :index
end

get "/client_index" do
  erb :client_index
end

get "/new_client" do
  erb :new_client
end

get "/contact" do
  erb :contact
end


post "/test" do
  puts "#### 送信されたデータ ###"
  puts params
  name = params
  
  client = Client.new()
  client.owner_name = "濱田"
  client.phonetic_name = "ハマダ"
  client.pet_name = "シロ"
  client.pet_type = "秋田犬"
  client.save
  erb :test
end

get "/test_new" do
  
  erb :test_new
end
