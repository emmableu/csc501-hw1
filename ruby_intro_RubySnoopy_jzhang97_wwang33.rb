# Part 1

def unique_array(a)
  # ADD YOUR CODE HERE
  ary = Array.new
  a.reverse!

  while !a.empty? do
    e = a.pop
    if ary.include?(e)
      next
    else
      ary.push(e)
    end
  end
  ary
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

  result = Hash.new
  a.each do |e|
    e_chars = e.split("").sort!
    if result.keys.include?(e_chars)
      result[e_chars].push(e)
    else
      result[e_chars] = [e]
    end
  end

  result.values
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
  vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
  s_chars = s.split("")
  f = Array.new
  v = Array.new
  s_chars.each do |c|
    if vowels.include?(c)
      v.push(c)
    else
      f.push(c)
    end
  end

  f.concat(v).join
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

# Part 3
#
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


#
# class Book
#   # ADD YOUR CODE
#   def initialize(name, price)
#     begin
#       @name, @price = name, price
#       raise ArgumentError if name == nil || name.to_s.empty? || price == nil || price <= 0
#
#     end
#   end
#
#   def getName
#     @name
#   end
#
#   def getPrice
#     @price
#   end
#
#   def setName=(name)
#     @name = name
#   end
#
#   def setPrice=(price)
#     @price = price
#   end
#
#   def formatted_price
#     if @price.is_a?Integer
#       price = @price.to_s
#     else
#       price = format("%.2f", @price).to_s
#     end
#
#     if price =~ /^0\.0(\d)*/
#       price.sub!(/^0\.0/, "")
#       if price.to_i == 1
#         format_price = "1 cent only"
#       else
#         format_price = "#{price} cents only"
#       end
#
#     elsif price =~ /^0\.(\d)*/
#       price.sub!(/^0\./, "")
#       format_price = "#{price} cents only"
#
#     elsif price =~ /(\d)*\.0(\d)*/
#       i = price.sub(/\.0(\d)*/, "")
#       j = price.sub(/(\d)*\.0/, "")
#       if i.to_i == 1 && j.to_i == 1
#         format_price = "#{i} dollar and #{j} cent only"
#       elsif i.to_i == 1 && j.to_i == 0
#         format_price = "#{i} dollar"
#       elsif i.to_i > 1 && j.to_i == 1
#         format_price = "#{i} dollars and #{j} cent only"
#       elsif i.to_i > 1 && j.to_i == 0
#         format_price = "#{i} dollars"
#       elsif i.to_i == 1 && j.to_i > 1
#         format_price = "#{i} dollar and #{j} cents only"
#       else
#         format_price = "#{i} dollars and #{j} cents only"
#       end
#
#     elsif price =~ /(\d)*\.(\d)*/
#       i = price.sub(/\.(\d)*/, "")
#       j = price.sub(/(\d)*\./, "")
#       if i.to_i == 1
#         format_price = "#{i} dollar and #{j} cents only"
#       else
#         format_price = "#{i} dollars and #{j} cents only"
#       end
#
#     else
#       if price.to_i == 1
#         format_price = "#{price} dollar only"
#       else
#         format_price = "#{price} dollars only"
#       end
#     end
#     format_price
#   end
#
# end
