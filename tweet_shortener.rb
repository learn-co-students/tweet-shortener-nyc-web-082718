# Write your code here.
require "pry"

def dictionary 
  
  dictionary_hash  = {
  "hello" => "hi", 
  "to, two, too" => "2", 
  "for, four" => "4",
  "be" => "b",
  "at" => "@",
  "and" => "&"
}

end 

def word_substituter(tweet)
  arr = tweet.split
  arr.each do |word|
    # binding.pry
    if word == dictionary.keys
      word == dictionary.values
      
end 
end 
arr.join(' ')
end