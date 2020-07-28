require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    newer_array = []
    self.split(/[.?!]/).collect do |s|
      if s != ""
        newer_array.push(s)
      end
    end
    newer_array.count
    
    # sentences = []
    # self.split("").each_with_index do |character, i|
    #   if character != self[i-1]
    #     if character == "." || character == "?" || character == "!" 
    #       sentences << character
    #     end
    #   end
    # end
    # sentences.count

    # #self.split(/\.|\?|\!+/).count
    
  end
  
end