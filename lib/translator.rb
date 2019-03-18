# require modules here
require "yaml"

def load_library(path)
  # code goes here
  emoticons = YAML.load_file(path)
  return_hash = {"get_meaning" => {}, "get_emoticon" => {}}
  emoticons.each do |type, detail|
    return_hash["get_meaning"][emoticons[type][1]] = type
    return_hash["get_emoticon"][emoticons[type][0]] = emoticons[type][1]
  end
  return_hash
end


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end