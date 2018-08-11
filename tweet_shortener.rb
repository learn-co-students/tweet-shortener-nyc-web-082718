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
  "at" => "@",
  "and" => "&"
}

end 

def word_substituter(tweet)
  arr = tweet.split
  arr.map do |word|
    # binding.pry
    if dictionary.keys.include?(word)
      # binding.pry
      word = dictionary[word]
      binding.pry
  
end 
end.join(' ')
# arr.join(' ')
end