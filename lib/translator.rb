# require modules here
require "yaml"
require 'pry'

def load_library(file_path)
  
  emoticons = {}
  
  YAML.load_file(file_path).each do |key, value|
    emoticons[key] = {}
    emoticons[key][:english] = value[0]
    emoticons[key][:japanese] = value[1]
  end
  emoticons
end

def get_japanese_emoticon(file_path, emoticon
  load_library(file_path).each do |key, value|
    if value[:english] == emoticon
      return value[:japanese]
    end
  end
  return "Sorry, that emoticon was not found"
=======
  # code goes here
>>>>>>> dbf6ce7223c04330e8e62bacb446b59bcc427711
end

def get_english_meaning(file_path, emoticon)
  load_library(file_path).each do |key, value|
<<<<<<< HEAD
    if value[:japanese] == emoticon
      return key
    end
  end
  return "Sorry, that emoticon was not found"
=======
    binding.pry
>>>>>>> dbf6ce7223c04330e8e62bacb446b59bcc427711
end