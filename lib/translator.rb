# require modules here
require "yaml"
#emoticons = YAMl.load_file("lib/emoticons.yml")

def load_library(path)
  # code goes here
emoticons = YAMl.load_file("emoticons.yml")
  emoticons = YAMl.load_file(path)
  emoticons.each do | key, value|
    english = value[0]
    japanese= value[1]
    new_hash["get_meaning"][japanese] = key
    new_hash["get_emoticon"][english]= value[1]
  end
  new_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end