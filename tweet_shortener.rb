require "pry"

def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2", 
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b", 
    "you" => "u",
    "at" => "@",
    "and" => "&"}
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  answer_array = tweet_array.collect do |word|
    if dictionary.keys.include?(word.downcase)
      dictionary[word.downcase]
    else
      word
    end
  end
  answer_array.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweets|
    puts word_substituter(tweets)
  end
end

def selective_tweet_shortener(tweets)
  if tweets.length < 140
    tweets
  else
    word_substituter(tweets)
  end
end

def shortened_tweet_truncator(tweets)
  if tweets.length <= 140
    tweets
  elsif word_substituter(tweets).length <= 140
    word_substituter(tweets)
  else
    "#{word_substituter(tweets)[0...137]}..."
  end
end