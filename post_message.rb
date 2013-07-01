# post_message.rb

require "typhoeus"

puts ""
print "What is your name? "
sender = gets.chomp

puts ""
print "Who do you want to message? "
receiver = gets.chomp

print "Your message: "
message = gets.chomp

puts ""
print "Sending message..."

uri = "localhost:9393" #set to whatever server is running your sinatra

# TODO: Post the message to the server
Typhoeus.post(uri, :body => {
  sender: sender,
  receiver: receiver,
  content: message
})


puts "done!"
puts "Message Posted Successfully!"
puts ""
