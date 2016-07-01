require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word count path', {:type => :feature}) do
  it('will accept a sentence and a word from the user and then return how many times the word apears in the sentence') do
    visit('/')
    fill_in('sentence_to_be_searched_in', :with => 'hello world')
    fill_in('word_to_be_searched', :with => 'hello')
    click_button('search')
    expect(page).to have_content("1")
  end
  it('will accept a sentence and a word from the user and then return how many times the word apears in the sentence') do
    visit('/')
    fill_in('sentence_to_be_searched_in', :with => 'hello world Hello hellO heLLO')
    fill_in('word_to_be_searched', :with => 'hello')
    click_button('search')
    expect(page).to have_content("4")
  end
  it('will accept a sentence and a word from the user and then return the sentence with the non matching words in lower case and the matching words upper cased') do
    visit('/')
    fill_in('sentence_to_be_searched_in', :with => 'hello world Hello hellO heLLO')
    fill_in('word_to_be_searched', :with => 'hello')
    click_button('search')
    expect(page).to have_content("HELLO world HELLO HELLO HELLO")
  end
end
