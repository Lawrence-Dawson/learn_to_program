puts 'Enter the Numeral you wish to convert'
puts
numeral = gets.chomp
def roman_to_integer roman
  digit_vals = {'i' => 1,
                'v' => 2,
                'x' => 10,
                'l' => 50,
                'c' => 100,
                'd' => 500,
                'm' => 1000}

total = 0
prev = 0
index = roman.length - 1
while index >= 0
    c = roman[index].downcase
    index = index - 1
    val = digit_vals[c]
    if !val
      puts 'This is not a valid roman numeral!'
      return
    end

    if val < prev
    val = val * -1
    else
    prev = val
    end
    total = total +val
  end
  total
end
result = roman_to_integer(numeral)
puts 'The numeral you have entered is ' + result.to_s + ' in modern day numbers'
puts
puts (roman_to_integer('mcmxcix'))
puts (roman_to_integer('CCCLXV'))
