def getChar(a)
  morse_dict = {
    "a" => ".-",
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
    " " => " ",
    "1" => ".----",
    "2" => "..---",
    "3" => "...--",
    "4" => "....-",
    "5" => ".....",
    "6" => "-....",
    "7" => "--...",
    "8" => "---..",
    "9" => "----.",
    "0" => "-----"
  }
  return morse_dict.key(a).upcase
end

def getWord(ar)
  word = ''
  ar.each { |i| word = word + getChar(i) }
  return word
end

def decode(str)
  sentese = ''
  arr = str.split('   ')
  arr.each { |i| sentese = sentese + getWord(i.split(' ')) + ' ' }
  sentese
end
x = decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
puts x
