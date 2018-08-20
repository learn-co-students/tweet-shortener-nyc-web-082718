require 'pry'
def dictionary
  {
  "hello"=> "hi",
  "to"=> "2",
  "two"=> "2",
  "too"=> '2',
  "for"=> "4",
  "For"=> "4",
  "four"=> "4",
  'be'=> 'b',
  'you'=> 'u',
  "at"=> "@",
  "and"=> "&"
 }
end

def word_substituter(string)
 string.split(" ").collect {|w| dictionary[w] ? dictionary[w]: w}.join(" ")

end

def bulk_tweet_shortener(array)
 array.each do |string|
   puts string.split(" ").collect {|w| dictionary[w] ? dictionary[w]: w}.join(" ")
 end
end


def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  s = word_substituter(tweet)
  s.length > 140 ? s.slice(0...137).concat("...") : tweet
end
