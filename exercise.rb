# if the number is divisible by 2 the value should be one more than the key
# if the number is divisible by 7 the value should be one less than the key
# if the number is divisible by 2 and 7 the value should be the key multiplied by 2
# otherwise the value should be the same number as the key


hash = Hash.new(0)

50.times do |num|

  key = num + 1
  number = key
  if (number % 2) == 0 && (number % 7) == 0
    number = key * 2
  elsif (number % 2) == 0
    number = key + 1
  elsif (number % 7) == 0
    number = key - 1
  else
    number = key
  end
  hash[key] = number
end

p hash
