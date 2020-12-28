# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts " destroying..."
Message.destroy_all
User.destroy_all
Channel.destroy_all

puts " Creating models..."

user = User.create( email: 'nordlund.martin@gmail.com', password: "Murran23" ) 
user2 = User.create( email: 'test@test.com', password: "123456", nickname: "Test"  ) 
channel1 = Channel.create(name: "general")
channel2 = Channel.create(name: "paris")
channel3 = Channel.create(name: "react")

message1 = Message.create(content: "hello hello!", user_id: user.id, channel_id: channel1.id)
message2 = Message.create(content: "Hi there, whats up?", user_id: user2.id, channel_id: channel1.id)
