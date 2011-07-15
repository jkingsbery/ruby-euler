
def fibonacci(lessThan)
  return fibonacciHelper([1,2],lessThan)
end

def fibonacciHelper(vals,lessThan)

  if(vals[-1]+vals[-2]>lessThan)
    return vals
  else
    return fibonacciHelper(vals << vals[-1]+vals[-2],lessThan)
  end
end

puts fibonacci(4000000).select{|x|x%2==0}.inject(:+)
