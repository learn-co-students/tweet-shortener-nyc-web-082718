def dictionary
  words_to_be_subsituted = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end 

def word_substituter(tweet)
  tweet = tweet.split(' ').map do |word|
    if dictionary.include?(word.downcase)
      dictionary[word.downcase]
    else 
      word
    end
  end 
  tweet.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end 
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else 
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  return tweet[0..136] << '...' if tweet.length > 140
  tweet
end

# puts word_subsituter('you')