puts
puts
puts 'Hi there, I want to tell you how old you are and SPANK you for every birthday you/ve had?!?'
puts
puts 'Please enter the year you were born'
year = gets.chomp
puts
puts 'Please enter the month you were born'
month = gets.chomp
puts
puts 'Please enter the day you were born'
day = gets.chomp

dob = Time.local(year, month, day)
seconds_alive = Time.new - dob
hours = seconds_alive / (60 * 60)
minutes = (seconds_alive / 60) % 60
seconds = seconds_alive % 60
days = hours / 24
birthdays = days / 365.25
how_long_to_bill = 1_000_000_000 - seconds_alive
actual_day = (Time.local(year, month, day) + 10**9)

puts 'You were born on ' + dob.to_s
puts
puts 'You are one billion years old on ' + actual_day.to_s
puts
puts 'You/ve had ' + birthdays.to_s + ' birthdays so here/s that many SPANKS!'
puts
puts 'SPANK! ' * birthdays
