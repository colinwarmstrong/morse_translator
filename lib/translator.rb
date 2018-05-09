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
    array_of_characters = string.split(" ")
    array_of_characters.map! do |character|
      character = @dictionary.key(character)
    end
    english_string = array_of_characters.join("")
  end

  def eng_to_morse_from_file
  end

end

t = Translator.new
puts t.eng_to_morse("hello world")
puts t.eng_to_morse("There are 3 ships")

puts t.morse_to_eng(".... . .-.. .-.. ---  .-- --- .-. .-.. -..")
# puts t.morse_to_eng("-......-.. .-.-.. ...-- ..........--....")
