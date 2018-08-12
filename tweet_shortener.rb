# Write your code here.
require "pry"

def dictionary 
  
  dictionary_hash  = {
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
  tweet.split.map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else 
      word
  
end 
end.join(' ')
end


def bulk_tweet_shortener(tweets)
  i = 0 
  while i < tweets.length 
  puts word_substituter(tweets[i])
  i+=1 
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
  shortened_tweet = word_substituter(tweet)
  if shortened_tweet.length > 140
      # binding.pry
    shortened_tweet[0...137] + "..."
  else tweet
end 
end 