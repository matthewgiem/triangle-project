
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
describe("string#word_identify") do
  it("recognize if a word appears in a sentence/string") do
    expect("hello world".word_identify("hello")).to(eq(true))
  end
  it("recognize if a word does not appear in a sentence/string") do
    expect("hello word".word_identify("what")).to(eq(false))    
  end
end
