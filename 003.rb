def multiples_of(i,max)
  return (2..max/i).collect { |x| x*i }
end

def prime_sieve(max)
  (2..max).each { |i|
    if prime_map[i]
      puts "+++++"+i.to_s+"+++++"
      multiples_of(i,max).each { |x| prime_map[x]=false }
    end
  }
  return prime_map
end

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


