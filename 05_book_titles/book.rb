class Book
# write your code here
  attr_accessor :title
  
  def title
    exceptions = ['the', 'an', 'a', 'and', 'in', 'of']
    
    if (@title.include? 'the') || (@title.include? 'a') || (@title.include? 'and') || (@title.include? 'an')
      caps = @title.split.map do |t|
      
        unless exceptions.include? t
          t.capitalize
        else
          t
        end
        
      end
      caps[0].capitalize!
      @title = caps.join(" ")
    else
      @title = @title.split.map {|t| t.capitalize}.join(" ")
    end
    
  end  
end
