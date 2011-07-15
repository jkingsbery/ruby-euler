def is_palindrome(x)
  return x.to_s.reverse==x.to_s
end

nums=[]
(100..999).each{|i|
  (100..999).each{|j|
    if(is_palindrome(i*j))
      nums << i*j
    end
  }
}

puts nums.sort[-1]
