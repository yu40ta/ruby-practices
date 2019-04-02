# def fizz_buzz
#   num = 1
#   while num <= 100 do
#       if num % 15 == 0
#         puts "FizzBuzz"
#       elsif num % 3 == 0
#         puts "Fizz"
#       elsif num % 5 == 0
#         puts "Buzz"
#       else
#         puts num
#       end
#     num += 1
#   end
# end

# fizz_buzz

def fizz_buzz(n)
  while n <= 100 do
    case 0
    when n % 15
      puts "FizzBuzz"
    when n % 3
      puts "Fizz"
    when n % 5
      puts "Buzz"
    else
      puts n
    end
  n += 1
  end
end

num = 0
fizz_buzz(num)
