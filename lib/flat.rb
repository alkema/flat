# * Simple module to hold some array flattening methods
# @author Jody Alkema <jody@alkema.ca>
#
module Flat
  # Converts an arbitrarily nested array into a flattened array.
  #
  # The method tests to see if each item is an Array.
  # If *item* is an Array the method then recurses and passes *item* and
  # the current flattened array back into the same method.
  #
  # Note: When item is an Array it uses a guard clause and
  # immediately moves onto the next item.
  #
  # == Parameters:
  # nested::
  #   Array of items, arbitrarily nested.
  # flattened::
  #   Array of items, flattened.
  #   Intended for recursion and the ultimate return value.
  #
  # == Returns:
  # Returns a single dimension array of all items passed in
  #
  def recurse_flatten(nested, flattened: [])
    nested.each do |item|
      recurse_flatten(item, flattened: flattened) && next if item.is_a?(Array)

      flattened << item
    end
    flattened
  end

  # Converts an arbitrarily nested array into a flattened array.
  #
  # == Parameters:
  # nested::
  #   Array of items, arbitrarily nested, will be returned after recursion.
  #
  # == Returns:
  # Returns a single dimension array of all items passed in
  #
  def reduce_flatten(nested)
    nested.reduce([]) do |result, sub_array|
      if sub_array.is_a?(Array)
        result + reduce_flatten(sub_array)
      else
        result << sub_array
      end
    end
  end
end
