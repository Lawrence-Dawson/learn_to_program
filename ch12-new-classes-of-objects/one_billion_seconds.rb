time_now = Time.now

my_birth = Time.local(1987,8,2,18,00)

how_long_ago = time_now - my_birth
seconds_to_bill = 1_000_000_000 - how_long_ago

hours = seconds_to_bill / (60 * 60)
minutes = (seconds_to_bill / 60) % 60
seconds = seconds_to_bill % 60
days = hours / 24
actual_day = (Time.local(1987,8,2,18,00) + 10**9)

puts
puts 'I was born ' +  my_birth.to_s
puts
puts 'That was ' + how_long_ago.to_s + ' seconds ago'
puts
puts 'I/ll be a billion seconds old in ' + seconds_to_bill.to_s + ' seconds'
puts 'which is ' + days.to_s + ' days'
puts hours.to_s + ' hours'
puts minutes.to_s + ' minutes'
puts 'and ' + seconds.to_s + ' seconds from now'
puts
puts 'On ' + actual_day.to_s + 'to be precise'
puts
puts
