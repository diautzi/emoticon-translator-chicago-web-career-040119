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

def get_japanese_emoticon(path, emoticon)
  # code goes here

  load_library(path)
  emoticons = YAML.load_file(path)
  return_hash["get_emoticon"].each do |english, japonese|
    if emoticon == english
      return japonese
    else 
      return "Sorry, that emoticon was not found"
    end
  end
end

def get_english_meaning
  # code goes here
end