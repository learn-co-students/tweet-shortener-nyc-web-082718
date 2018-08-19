# Write your code here.
def dictionary
  dictionary = {"hello":"hi","to":"2","two":"2","too":"2","for":"4","four":"4","be":"b","you":"u","at":"@","and":"&"}
  return dictionary
end

def word_substituter(tweet)
  dictionary = {"hello" => "hi","to" =>"2","two" =>"2","too" =>"2","for" =>"4","four" =>"4","be"=>"b","you"=>"u","at"=>"@","and"=>"&"}
  comparison = dictionary.keys
  expanded_tweet = tweet.split
  new_tweet = []
  expanded_tweet.collect do |word|
    if comparison.include?(word.downcase)
      new_tweet << dictionary[word.downcase]
    else
      new_tweet << word
    end
  end
  return new_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
    end
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
      word_substituter(tweet)
  else
      return tweet
  end
end

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).size > 140
    return selective_tweet_shortener(tweet)[0..136] + "..."
  else
    return selective_tweet_shortener(tweet)
  end
end
