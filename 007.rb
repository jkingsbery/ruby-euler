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

sieve=prime_sieve(110000)
puts sieve.length
puts sieve[0]
puts sieve[10000]
