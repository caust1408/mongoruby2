# Insert a multiple records from Ruby hashes
require 'rubygems'
require 'mongo'
client = Mongo::Client.new('mongodb://127.0.0.1:27017/cmp341')
brown = {"last_name" => "brown", "age" => 19}
chapstick = {"last_name" => "chapstick", "age" => 64}
result = client[:users].insert_many([brown, chapstick])
p result.n
