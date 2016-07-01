
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
  # it("recognize if a word appears in a sentence/string") do
  #   expect("hello world".word_identify("hello")).to(eq(true))
  # end
  # it("recognize if a word does not appear in a sentence/string") do
  #   expect("hello word".word_identify("what")).to(eq(false))
  # end
  it("recognize how many times the user_word appears in the sentence/string and returns the number") do
    expect("hello word".word_identify("hello")).to(eq("1"))
  end
  it("recognize how many times the user_word appears in the sentence/string and returns the number") do
    expect("hello word hello hello".word_identify("hello")).to(eq("3"))
  end
  it("recognize how many times the user_word appears in the sentence/string and returns the number including the value 0") do
    expect("hello word hello hello".word_identify("what")).to(eq("0"))
  end
  it("recognize the case the variables and return the same values as about while preserving case") do
    expect("Hello world HEllo hello".word_identify("hello")).to(eq("3"))
  end
  it("recognize the case the variables and return the same values as about while preserving case") do
    expect("Hello world HEllo hello".word_identify("heLLo")).to(eq("3"))
  end
end
