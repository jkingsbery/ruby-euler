def find_divisor_index(numerator,x)
  i=0
  until i >= numerator.length
    if(numerator[i]%x==0)
      return i
    end
    i+=1
  end
  return -1
end


grid_size=20
decision_points=2*grid_size
numerator=(decision_points/2+1..decision_points).to_a


denominator=(1..decision_points/2).to_a

#cancel out - greedy algorithm

#find value that d[0] divides

i=0
until i >= numerator.length
  index = find_divisor_index(numerator,denominator[i])
  if(index!=-1)
    numerator[index]=numerator[index]/denominator[i]
    denominator[i]=1
  end
  i+=1
end

#puts "++++++++++++++++"
#numerator.each{|i| 
#  puts i
#}

puts numerator.inject(:*)/denominator.inject(:*)



#  grid_size!
#--------------
#(gs/2)!(gs/2)!
