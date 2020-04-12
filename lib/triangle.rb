class Triangle

attr_accessor :s1, :s2, :s3
attr_writer :kind

def initialize (side1, side2, side3)
  @s1 = side1
  @s2 = side2
  @s3 = side3
end

def kind
  if (@s1 +@s2) <= @s3 || (@s2 + @s3) <= @s1 || (@s3 + @s1) <= @s2 
    begin
      raise TraingleError
      puts error.message
    end
    elsif @s1 == @s2 && @s1 == @s3
      self.kind = :equilateral 
    elsif @s1 == @s2 || @s2 == @s3 || @s3 == @s1
      self.kind = :isosceles
    else 
      self.kind = :scalene
    end
  end
  
  class TraingleError < StandardError
    def message
      puts "not a traingle"
    end
  end
end