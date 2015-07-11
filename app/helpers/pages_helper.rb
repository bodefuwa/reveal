module PagesHelper

  def line_up(line)
      input = line
      values = input.split(",")

      values.each do |value|
        return value 
      end
    end
    
end
