#manually triggers an error
#forces an exception to occur 
#when ruby sees an integer, plus sign 
#and string ruby knows theres a type error and it raises concern

class Oven 
  attr_accessor :state

  def initialize 
    @state = "off"
  end   
  
  def turn_on
    self.state = "on"
  end

  def bake(item)
    if state == "off"
      raise "Please turn the oven on first"
    else
      puts "Baking #{item}"
    end  
  end
end 

oven = Oven.new 
oven.bake("Pepperoni Pizza")