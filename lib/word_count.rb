require('pry')
class String
  define_method(:word_identify) do |user_word|
    word_exist = false
    self.split(" ").each do |word|
      if word.word_evaluator(user_word)
        word_exist = true
      end
    end
    word_exist
  end
end
class String
  define_method(:word_evaluator) do |word|
    if word == self
      true
    else
      false
    end
  end
end
