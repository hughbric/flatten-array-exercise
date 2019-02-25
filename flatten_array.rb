class FlattenArray
  def self.flatten(input_array, output_array = [])
  #Builds an output array that recursively calls itself in order to remove nested arrays. 
  #Removes elements that are nil
    input_array.each do |element|
      next if element == nil
      element.class == Array ? flatten(element, output_array) : output_array << element
    end
    output_array
  end
end
