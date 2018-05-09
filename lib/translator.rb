require 'pry'

class Translator

  def initialize
    @dictionary = {"a" => ".-",
                    "b" => "-...",
                    "c" => "-.-.",
                    "d" => "-..",
                    "e" => ".",
                    "f" => "..-.",
                    "g" => "--.",
                    "h" => "....",
                    "i" => "..",
                    "j" => ".---",
                    "k" => "-.-",
                    "l" => ".-..",
                    "m" => "--",
                    "n" => "-.",
                    "o" => "---",
                    "p" => ".--.",
                    "q" => "--.-",
                    "r" => ".-.",
                    "s" => "...",
                    "t" => "-",
                    "u" => "..-",
                    "v" => "...-",
                    "w" => ".--",
                    "x" => "-..-",
                    "y" => "-.--",
                    "z" => "--..",
                    "1" => ".----",
                    "2" => "..---",
                    "3" => "...--",
                    "4" => "....-",
                    "5" => ".....",
                    "6" => "-....",
                    "7" => "--...",
                    "8" => "---..",
                    "9" => "----.",
                    "0" => "-----",
                    " " => " "}
  end

  def eng_to_morse(string)
    array_of_characters = string.downcase.split("")
    array_of_characters.map! do |character|
      character = @dictionary[character]
    end
    morse_code = array_of_characters.join("")
  end

  def morse_to_eng(string)
    array_of_characters_raw = string.split("")
    array_with_spaces = []
    array_of_characters_raw.each do |character|
      if character == " "
        array_with_spaces << character
      else
        array_with_spaces << character
      end
    end
    array_with_spaces.map! do |character|
      character = @dictionary.key(character)
    end
    english = array_with_spaces.join("")
  end

  # def morse_to_eng(string)
  #   array_raw = string.split("")
  #   array_with_spaces = []
  #   array_raw.each do |character|
  #     while character != " "
  #       array_with_spaces << character
  #       array_with_spaces.concat
  #       next
  #     end
  #     array_with_spaces.map! do |character|
  #       word = @dictionary.key(character)
  #     end
  #   end
  # end


  def from_file(file)
    file_lines_array = File.readlines(file)
    file_characters_array = []
    file_lines_array.each do |line|
      file_characters_array << line
    end
    file_characters_array.map! do |character|
      character = @dictionary[character]
    end
    morse_code = file_characters_array.join("")
    puts morse_code
  end

end

t = Translator.new
puts t.eng_to_morse("hello world")

puts t.from_file('./input.txt')

puts t.morse_to_eng(".... . .-.. .-.. ---  .-- --- .-. .-.. -..")
