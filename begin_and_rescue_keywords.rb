#exception is an error in your code
#an error is a point in your code where ruby cannot properly evaluate 

def sum(a, b)
  begin
    a + b
  rescue 
    "Unknown"
  end
end 

puts sum(3, 5)
puts sum(3, "5") #5 is a string so it can't be added 

#added unknown. when we encounter an error, ruby will look for a rescue and use that instead

puts sum(nil, nil)