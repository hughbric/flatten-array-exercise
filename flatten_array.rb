class FlattenArray
  def self.flatten(input_array, output_array = [])
  #Builds an output array that recursively calls itself in order to remove nested arrays. 
  #Skips if an element is nil
    input_array.each do |element|
      next if element == nil
      if element.class == Array
        flatten(element, output_array)
      else
        output_array << element
      end
    end
    output_array
  end
end
