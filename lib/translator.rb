# require modules here
require "yaml"

# def load_library(path)
#   # code goes here
#   emoticons = YAML.load_file(path)
#   return_hash = {"get_meaning" => {}, "get_emoticon" => {}}
#   emoticons.each do |type, detail|
#     return_hash["get_meaning"][emoticons[type][1]] = type
#     return_hash["get_emoticon"][emoticons[type][0]] = emoticons[type][1]
#   end
#   return_hash
# end

def load_library(file_path)
  library = {"get_meaning" => {}, "get_emoticon" => {} }
  YAML.load_file(file_path).each do |meaning, array|
    english, japanese = array
    library["get_emoticon"][english] = japanese
    library["get_meaning"][japanese] = meaning
  end
  library

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end