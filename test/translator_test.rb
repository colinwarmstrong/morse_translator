require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator.rb'

class TranslatorTest < Minitest::Test

  def test_does_translator_exist
    t = Translator.new
    assert_instance_of Translator, t
  end

  def test_if_to_translates_eng_to_morse
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

  def test_if
  end


end
