# require modules here
require "yaml"
emoticons = YAMl.load_file("lib/emoticons.yml")

def load_library(path)
  # code goes here
  new_hash = {get_meaning => {}, get_emoticon => {}}
  emoticons = YAMl.load_file("emoticons.yml")
  emoticons.each do | key, value|
    new_hash["get_meaning"][value[1]]= key
    new_hash["get_emoticon"][value[0]]= value[1]
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end