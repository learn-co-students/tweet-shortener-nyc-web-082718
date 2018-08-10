# Write your code here.
def dictionary
  words_to_be_substitued =
  {"hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
    "four" => "4",
    "for" => "4"}
end

def word_substituter(tweet)
  tweet.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    tweet = word_substituter(tweet)
    puts "#{tweet}"
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
  if tweet.length > 140
    tweet[0...140]
  else
    tweet
  end
end
