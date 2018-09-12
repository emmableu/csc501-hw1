# Part 1

def unique_array(a)
  # ADD YOUR CODE HERE
end

def two_sum?(a,n)
  new_arr = Array.new
  if a == nil
      return false
  else
    for i in a
      if new_arr.include? i
        return true
      else
         new_arr.push(n-i)
      end
    end
  end
  return false
end

def group_anagrams(a)
  # ADD YOUR CODE HERE
end

# Part 2

def palindrome?(s)
  if s.is_a?(String)
    s = s.split('')
  end
  if s.length <= 1
    return true
  else
    if s.pop == s.shift
      palindrome?(s)
    else
      return false
    end
  end
end


def remove_and_append_vowels(s)
  # ADD YOUR CODE HERE
end

def highest_frequency_word(s)
  s = s.downcase.split(/\W+/)
  if s == nil
    return []
  else
    freq_dict = {s.shift => 1}
    for i in s
      if freq_dict.key?(i)
        freq_dict[i] += 1
      else
        freq_dict[i] = 1
      end
    end
  end
  return freq_dict.max_by{|k, v| v}[0]
end

module Format
  def raise_error(name, price)
    if (price == nil || price <= 0 || name.to_s.empty?)
      raise ArgumentError
    end
  end

  def num2phrase(num, measure)
    if measure == "cent"
      num = (100*(num - num.floor)).round
    else
      num = num.floor
    end
    if num == 0
      return nil
    elsif num == 1
      return num.to_s << " " +measure + " "
    else
      return num.to_s << " " +measure + "s "
    end
  end
end




class Book
  attr_reader :name, :price
  include Format
  def initialize(name, price)
    @name = name
    @price = price
    raise_error(name, price)
  end

  def name=(name)
    @name = name
  end

  def price=(price)
    @price = price
  end

  def formatted_price
    print(num2phrase(price, "dollar"))
    print("and "*((price >1 && (100*(price - price.floor)).round !=0)? 1:0))
    print(num2phrase(price, "cent"))
  end

 end
