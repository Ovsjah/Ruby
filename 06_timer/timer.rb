class Timer
  #write your code here
  attr_accessor :seconds
  
  def initialize
    @seconds = 0
  end
  
  def time_string
    #hours = @seconds / 3600
    #s_l = @seconds - hours * 3600
    #min = s_l / 60
    #sec = s_l - min * 60
    #hours_s = "0#{hours}"
    #min_s = "0#{min}"
    #sec_s= "0#{sec}"

    #if hours_s.length == 3 && hours.to_s.length == 2
      #hours_s.sub!("0", "")
    #end
    
    #if min_s.length == 3 && min.to_s.length == 2
      #min_s.sub!("0", "")
    #end
    
    #if sec_s.length == 3 && sec.to_s.length == 2
      #sec_s.sub!("0", "")
    #end
    
    res = padded(@seconds)
    
    "#{res[0]}:#{res[1]}:#{res[2]}"
  end
  
  def padded(num)
    res = []  
    hours = num / 3600
    s_l = num - hours * 3600
    min = s_l / 60
    sec = s_l - min * 60
    
    if hours.to_s.length == 1
      res << "0#{hours}"
    else
      res << "#{hours}"
    end
    
    if min.to_s.length == 1
      res << "0#{min}"
    else
      res << "#{min}"
    end
    
    if sec.to_s.length == 1
     res << "0#{sec}"
    else
     res << "#{sec}"
    end
    
  end
end

timer = Timer.new
timer.seconds = 4000
p timer.padded(timer.seconds)
p timer.time_string
