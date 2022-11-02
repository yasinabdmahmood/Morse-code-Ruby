def get_char(char)
  morse_dict = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
    '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
    '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S',
    '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z'
  }
  morse_dict[char]
end

def get_word(arr)
  word = ''
  arr.each { |i| word += get_char(i) }
  word
end

def decode(str)
  sentese = ''
  arry = str.split('   ')
  arry.each { |i| sentese += "#{get_word(i.split)} " }
  sentese
end
x = decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
puts x
