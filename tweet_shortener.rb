# Write your code here.
def dictionary
  dictionary = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for, four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end 

def word_substituter(string)
 array = string.split(" ")
 new_array = []
 array.each do |word|
   if dictionary.keys.include?(word.downcase)
     new_array << dictionary[word.downcase] 
   else
     new_array << word 
end 
end
new_array.join(" ")
end 



def bulk_tweet_shortener(array)
  short_tweets = []
  array.each do |tweet|
    short_tweets << word_substituter(tweet)
  end 
short_tweets
end 

def selective_tweet_shortener(string)
  if string.length <= 140
    string
  elsif string.length > 140 
   short_tweet = word_substituter(string)
 end 
 short_tweet
 end 
    