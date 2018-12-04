# Write your code here.
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
  array.collect do |tweet|
  puts word_substituter(tweet)
  end 
end 

def selective_tweet_shortener(string)
  if string.length > 140 
  word_substituter(string)
 else 
   string 
 end 
 end 
 
 def shortened_tweet_truncator(string)
   if word_substituter(string).length > 140
     word_substituter(string)[0...136] + " ..."
    else
      word_substituter(string)
  end 
end 
 
    