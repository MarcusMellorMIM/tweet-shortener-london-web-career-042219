# Write your code here.
def dictionary
  dictionary_hash = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter( tweet )
  
  tweet_array = array.split(" ")
  dictionary~_hash = dictionary
  counter=0
  tweet_array.each do | word |
    if replacement_word=dictionary[word]
      tweet_array[counter]=replacement_word  
    end
    counter+=1
  end
  new_tweet=tweet_array.join
end