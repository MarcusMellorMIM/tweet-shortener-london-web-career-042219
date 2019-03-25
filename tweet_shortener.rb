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
  
  tweet_array = tweet.split(" ")
  dictionary_hash = dictionary
  counter=0
  replacement_word=""
  tweet_array.each do | word |
  if replacement_word=dictionary[word] #if true the key exists
      tweet_array[counter]=replacement_word  
  end
    counter+=1
  end
  new_tweet=tweet_array.join(" ")

end

def bulk_tweet_shortener

  puts word_substituter("Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!")

  puts word_substituter("OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?")

  puts word_substituter("I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real.")

  puts word_substituter("GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!")

  puts word_substituter("New game. Middle aged tweet followed by #youngPeopleHashTag Example: Gotta get my colonoscopy and mammogram soon. Prevention is key! #swag")

end

def selective_tweet_shortener( tweet )
  new_tweet=tweet
  if tweet.length > 140
    new_tweet=word_substituter( tweet )
  end
  new_tweet
end

def shortened_tweet_truncator( tweet )
  new_tweet=tweet
  if tweet.length > 140
    new_tweet=word_substituter( tweet )
    if new_tweet.length > 140
    new_tweet=new_tweet[0..136]
    new_tweet+="..."
    end
  end
  new_tweet
end

