require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator.rb'

class TranslatorTest < Minitest::Test

  def test_does_translator_exist
    t = Translator.new
    assert_instance_of Translator, t
  end

  def test_if_translates_eng_to_morse
    t = Translator.new
    letter = t.eng_to_morse("a")
    number = t.eng_to_morse("9")
    greeting = t.eng_to_morse("hello world")
    phrase = t.eng_to_morse("there are 3 ships")
    assert_equal letter, ".-"
    assert_equal number, "----."
    assert_equal greeting, "......-...-..--- .-----.-..-..-.."
    assert_equal phrase, "-......-.. .-.-.. ...-- ..........--...."
  end

  def test_if_translates_from_file
    t = Translator.new
    file_line_in_morse = t.from_file('./input.txt')
    assert_equal file_line_in_morse, ".. .--- ..-. .- ..-....-..."
  end 

  def test_if_translates_morse_to_eng
    t = Translator.new
    letter = t.eng_to_morse(".-")
    number = t.eng_to_morse("----.")
    greeting = t.eng_to_morse("......-...-..--- .-----.-..-..-..")
    phrase = t.eng_to_morse("-......-.. .-.-.. ...-- ..........--....")
    assert_equal letter, "a"
    assert_equal number, "9"
    assert_equal greeting, "hello world"
    assert_equal phrase, "there are 3 ships"
  end


end
