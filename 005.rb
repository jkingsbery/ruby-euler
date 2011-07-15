def multiples_of(i,max)
  return (2..max/i).collect { |x| x*i }
end

def prime_sieve(max)
  prime_map=Array.new(max,true)
  (2..max).each { |i|
    if prime_map[i]
      multiples_of(i,max).each { |x| prime_map[x]=false }
    end
  }
  return (2..max).to_a.select{ |x| prime_map[x]}
end


def prime_factor_power(n,p)
  if(n%p!=0)
    return 0
  else
    return 1+prime_factor_power(n/p,p)
  end
end

def prime_factorization(n,max)
  return prime_sieve(max).to_a.collect{|x| prime_factor_power(n,x)}
end

max=10
sieve=prime_sieve(max)
puts sieve.length
result=Array.new(sieve.length){ 0 }
#puts result

factorizations=(2..max).collect{ |x| prime_factorization(x,max) }
factorizations.each{|x|
#  puts "***************"
#  puts x
  (0..x.length-1).each{ |i|
    if x[i]>result[i]
      result[i]=x[i]
    end
  }
}
puts result
