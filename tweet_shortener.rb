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
  tweet = tweet.split(" ")
  words_to_be_substituted = dictionary.keys.map {|w| w.to_s}

  tweet.map do |word|
    if words_to_be_substituted.include? word
      word = dictionary[word.to_sym]
    end
  end

  tweet = tweet.join(" ")
end
