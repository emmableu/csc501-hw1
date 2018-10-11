As a leading international financial service company, Credit Suisse designs tailored strategies and innovative solutions for its clients around the world. In order to offer each unique client with the most personalized ideas and advices, the best match of articles is expected to be picked for each and every one of our clients.

Accurate and personalized recommendation system offers clients with convenience, quality reading experience, and effectiveness. Netflix and Youtube, who has spent prodigious effort in their recommendation engines, has made their users' attention and attachment glued to their products - products that talks with them, provide them with what they need. To approach this goal, Credit Suisse Research Recommendation Engine Team has generated a list of features - tags that describes an article. However, clients' reading history displays various behavioral patterns. Same feature is of different values in  clients. - based on our client taste, how can we recommend them with the best match of articles?

In order to address this overarching question, Credit Suisse Research Recommendation Engine Team wants you to help them with the following three studies:

1. How to identify each article by its own composition of weighted features? By using binary, categorical or numerical data, describe a feature's presence or importance in an article, in terms of the extent to which the article is shaped by that feature. A model can be built starting from manually tagging the articles and assigning them the corresponding weights. Using such model, automatic generation for the "weighted feature composition" of each input article is expected.
2. How to quantify clients' "taste", using historical behavioral data? Clients' reading history reveals their preferences on topics and other article features, but features that attracts the client a year ago might disengages him now. Would it be necessary to group the clients into different "taste groups"? Or is there any "interest level"  data combination to be utilized, to identify each client?
3. With quantified data to represent each client and each article, a recommendation of a set of articles is expected to be presented. What kind of articles should be displayed at the front page of our clients?

You will be provided with our clients' reading history data, the feature list of research articles, as well as some untagged articles.


# research article recommendation engine

As a leading international financial service company, Credit Suisse provides innovative and tailored strategies to its clients around the world. Thousands of high-quality research articles, including subjects of industries, stock markets, and macro-economics are written everyday by specialists in different areas within the bank. Among the various set of articles, we need to provide our client with the most personalized set of ideas and advises. 

Credit Suisse Research Recommendation Engine Team has generated a list of features - tags that describe the article in numerous different aspect. However, different clients' reading history displays different behavioral patterns. How do we weight each feature's impact on a client? What if a client's preference on a certain set of features change over time - for example, something that attracted him one year ago disengages him now? And the final question - based on our client taste, how can we recommend them with the best match of articles?



Credit Suisse Research Recommendation Engine Team wants you to help them with the following questions:

1. How can we identify each article by its own composition of weighted features? Using binary, categorical or numerical data, how can we describe a feature's presence in an article, or the extent to which the article is shaped by that feature? You can start by manually tagging the articles from the feature list and assign them the corresponding weights. Using such "training articles", can you help us find a way to automatically generate such weighted features in order to represent the articles?
2. After finding out such "weighted article feature compositions", we need to use them, as well as our client's behavioral data, to quantify our clients' tastes. A client might have a specific need for a kind of article during a specific period of time, but what are the articles that interests him most **now**? Think creatively, and decide whether you want to group them into different "taste groups", or you might want to use some "interest level"  data combination to identify each different clients.
3. Now that you have a way to quantify each articles as well as each client, you can think about using such data, to make a recommendation of the combination of articles! What kind of articles should be displayed at the front page of our clients?

You will be provided with our clients' browsing history data, the feature list of research articles, as well as some untagged articles.





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
