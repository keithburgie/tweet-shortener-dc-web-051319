tweet = ["I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real."]

tweets = [
  "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!", "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?", "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real.", "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!", "New game. Middle aged tweet followed by #youngPeopleHashTag Example: Gotta get my colonoscopy and mammogram soon. Prevention is key! #swag"
]

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

def word_substituter(tweet)
    array = tweet.split(" ")
    array.collect! do |word|
      puts word.downcase
      #dictionary.keys.include?(word.downcase) ? word = dictionary[word] : word
    end
    array.join(" ")
end
word_substituter(tweet)

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
    subs_tweet = word_substituter(tweet)
    short_tweet = "#{subs_tweet[0..136]}..."
    if tweet.length <= 140 
      tweet
    else
      subs_tweet.length <= 140 ? subs_tweet : short_tweet
    end
end

def shortened_tweet_truncator(tweet)
  subs_tweet = word_substituter(tweet)
  short_tweet = "#{subs_tweet[0..136]}..."
  if tweet.length <= 140 
    tweet
  else
    subs_tweet.length <= 140 ? subs_tweet : short_tweet
  end
end