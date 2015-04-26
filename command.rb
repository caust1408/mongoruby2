# Query for users older than 20
require 'rubygems'
require 'mongo'
client = Mongo::Client.new('mongodb://127.0.0.1:27017/admin')
cursor = client.command( {'listDatabases' =>  1} )
cursor.each do |doc|
  doc.each do |name|
  puts "Name:", name
  end
puts
#puts doc["databases"]
end
