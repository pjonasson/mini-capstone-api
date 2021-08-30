require "http"

system "clear"
puts "Choose an option:"
puts "[1] Kobe Byrant Jersey"
puts "[2] Von Miller Jersey"
puts "[3] Chris Sale Jersey"
puts "[4] All Jerseys"
input_option = gets.chomp

if input_option == "1"
  response = HTTP.get("http://localhost:3000/kobe")
  kobe = JSON.parse(response.body)
  puts "Here is your Kobe Bryant Jersey: #{kobe}"
elsif input_option == "2"
  response = HTTP.get("http://localhost:3000/von_miller")
  von = JSON.parse(response.body)
  puts "Here is your Von Miller Jersey: #{von}"
elsif input_option == "3"
  response = HTTP.get("http://localhost:3000/chris_sale")
  chris = JSON.parse(response.body)
  puts "Here is your Chris Sale Jersey: #{chris}"
elsif input_option == "4"
  response = HTTP.get("http://localhost:3000/all_jerseys")
  all = JSON.parse(response.body)
  puts "Here are all the jerseys: #{all}"
end
