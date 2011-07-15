max=100

squares = (1..max).collect{ |x| x*x }.inject(:+)

sum_of_n=max*(max+1)/2

difference = sum_of_n * sum_of_n - squares

puts difference
