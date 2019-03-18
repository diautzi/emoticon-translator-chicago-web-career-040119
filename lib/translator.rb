# require modules here
require "yaml"

def load_library(path)
  # code goes here
  #
   emoticons = YAML.load_file(file_path)
  return_hash = {"get_meaning" => {}, "get_emoticon" => {}}
  emoticons.each do |emoticon_type, emoticon_detail|
    return_hash["get_meaning"][emoticons[emoticon_type][1]] = emoticon_type
    return_hash["get_emoticon"][emoticons[emoticon_type][0]] = emoticons[emoticon_type][1]
  end
  return_hash
end


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end