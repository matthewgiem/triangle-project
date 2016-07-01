
require("rspec")
require("word_count.rb")

describe('String#word_evaluator') do
  it('recognize if two words are the same') do
    expect("hello".word_evaluator("hello")).to(eq(true))
  end
  it('recognize if two words are not the same') do
    expect("hello".word_evaluator("earth")).to(eq(false))
  end

end
