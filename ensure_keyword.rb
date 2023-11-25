#ensure runs no matter what 
#it is a chunk of code that runs no matter what 

def sum(a, b)
    begin
      a + b
    rescue TypeError => e  
      a = a.to_i   
      b = b.to_i # 
    rescue NoMethodError => error
      a= 0 
      b = 0
      retry
    ensure 
      puts "I'm always going to run"  
    end
  end 
  
  puts sum(3, 5)
  puts sum(3, "5") 
  puts sum("3", 5)
  puts sum(nil, nil)  
  