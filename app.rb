#これ以外のgemは、Gemfileに書く
require 'rubygems'
require 'bundler'

#Gemfileに記載してあるgemを取ってくるようになる
Bundler.require

#データベース接続
set :database, {adapter: "sqlite3", database: "clients.sqlite3"}

#clientsテーブルからClientモデルクラスを生成し、バリデーションを設定
class Client < ActiveRecord::Base
  validates_presence_of :owner_name

end


get "/" do

  erb :index
end

get "/client_index" do

  @clinets = Client.all 
  erb :client_index
end

get "/new_client" do
  erb :new_client
end

get "/contact" do
  erb :contact
end


get "/test" do
  
  @clients = Client.all
  
  erb :test
end

get "/test_new" do
  
  erb :test_new
end

post "/test_save" do
  puts "#### 送信されたデータ ###"
  puts params
  
  #owner_name = params[:owner_name]
  #phonetic_name = params[:phonetic_name]
  
  client = Client.new
  client.owner_name = params[:owner_name]
  client.phonetic_name = params[:phonetic_name]
  client.pet_name = params[:pet_name]
  client.pet_type = params[:pet_type]
  client.save

  #以下間違いコード
  #@client_owner_name = Client.new({owner_name: owner_name})
  #@client_owner_name.save
  #@client_phonetic_name = Client.new({phonetic_name: phonetic_name})
  #@client_phonetic_name.save
  #@client = Client.new({pet_name: pet_name})
  #@client = Client.new({pet_type: pet_type})
  #@client_owner_name.save
  #@client_phonetic_name.save

  redirect "/test"
end