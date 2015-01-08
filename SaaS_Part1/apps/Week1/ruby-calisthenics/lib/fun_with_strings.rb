
module FunWithStrings
  def palindrome?
    # your code here
    _string = self.gsub(/\W/,"").downcase
    return _string == _string.reverse

  end
  def count_words
    _array = self.downcase.gsub(/\W/," ").split
    _hash = Hash.new
    _array.each do |key|
      unless _hash.has_key?(key)
         _hash[key] = 1
      else
         _hash[key] = _hash[key]+1
      end
    end
    _hash
  end
  def anagram_groups
    return [] if self.empty?
    _array = self.downcase.gsub(/\W/," ").split
    _hash = Hash.new
    _array.each do |key|
      _keysort = (key.scan /\w/).sort.join
      unless _hash.has_key?(_keysort)
         _hash[_keysort] = [key]
      else
         _hash[_keysort] << key
      end
    end
    _hash.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
