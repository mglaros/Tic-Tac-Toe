#reopens the ruby Array class and defines an all_empty? method that
#returns true if all the elements of an array are empty, and false otherwise

class Array
   def all_empty?
      self.all?{|element| element.to_s.empty?} 
   end
   
   def all_same?
      self.all?{|element| element == self[0]} 
   end
   
   def any_empty?
      self.any?{|element| element.to_s.empty?} 
   end
   
   def none_empty?
      !any_empty? 
   end
    
    
end