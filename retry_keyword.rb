def sum(a, b)
    begin
      a + b
    rescue TypeError => e  
      a = a.to_i #will convert into integer  
      b = b.to_i #will convert to the equivalent integer 
      retry 
      puts "CLASS NAME: #{e.class}"
      puts "MESSAGE: #{e.message}"
    rescue NoMethodError => error
      puts "We are going to do something different to resolve a NoMethodError"
      puts "CLASS NAME: #{error.class}"
      puts "MESSAGE: #{error.message}"
    end
  end 
  
  puts sum(3, 5)
  puts sum(3, "5")   
  #puts sum(nil, nil)