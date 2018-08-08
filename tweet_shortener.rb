# Write your code here.
require 'pry'

def dictionary
  dictionary = {
    hello: 'hi',
    to: '2',
    two: '2',
    too: '2',
    for: '4',
    four: '4',
    be: 'b',
    you: 'u',
    at: "@",
    and: "&"
  }
end

def word_substituter(tweet)
  new_tweet = tweet.split(" ")
  words_to_be_substituted = dictionary.keys.map {|w| w.to_s}

  new_tweet.map! do |word|
    words_to_be_substituted.include?(word.downcase) ? word = dictionary[word.to_sym.downcase] : word
  end

  new_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    new_tweet = tweet.split(" ")
    words_to_be_substituted = dictionary.keys.map {|w| w.to_s}

    new_tweet.map! do |word|
      words_to_be_substituted.include?(word.downcase) ? word = dictionary[word.to_sym.downcase] : word
    end
    new_tweet.join(" ")
  else

    tweet
  end
end

def shortened_tweet_truncator(tweet)
  truncated_tweet = ""

  if word_substituter(tweet).length > 140
    truncated_tweet = "#{word_substituter(tweet)[1..137]}..."
  else
    word_substituter(tweet)
  end
end
