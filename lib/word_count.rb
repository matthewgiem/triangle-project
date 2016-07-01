require('pry')
class String
  define_method(:word_count) do
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
