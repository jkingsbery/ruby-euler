
def is_prime(x)
  if(x==1) 
    return false
  end
  i=2
  until i>Math.sqrt(x)+1
    if(x%i==0) 
      return false
    end
    i+=1
  end
  return true
end

#prime_map={}

multiples=[]
max=13195
max=600851475143

i=1
until i > Math.sqrt(max)+1
  if(max%i==0)
    multiples << i
  end
  i+=1
end

puts (multiples + multiples.collect{|x| max/x}).select{ |x| is_prime(x)}


