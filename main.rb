require 'set'

@dictionary = {}
@dictionary[' '] = ' '
@dictionary['.-'] = 'A'
@dictionary['-...'] = 'B'
@dictionary['-.-.'] = 'C'
@dictionary['-..'] = 'D'
@dictionary['.'] = 'E'
@dictionary['..-.'] = 'F'
@dictionary['--.'] = 'G'
@dictionary['....'] = 'H'
@dictionary['..'] = 'I'
@dictionary['.---'] = 'J'
@dictionary['-.-'] = 'K'
@dictionary['.-..'] = 'L'
@dictionary['--'] = 'M'
@dictionary['-.'] = 'N'
@dictionary['---'] = 'O'
@dictionary['.--.'] = 'P'
@dictionary['--.-'] = 'Q'
@dictionary['.-.'] = 'R'
@dictionary['...'] = 'S'
@dictionary['-'] = 'T'
@dictionary['..-'] = 'U'
@dictionary['...-'] = 'V'
@dictionary['.--'] = 'W'
@dictionary['-..-'] = 'X'
@dictionary['-.--'] = 'Y'
@dictionary['--..'] = 'Z'
@dictionary['.----'] = '1'
@dictionary['..---'] = '2'
@dictionary['...--'] = '3'
@dictionary['....-'] = '4'
@dictionary['.....'] = '5'
@dictionary['-....'] = '6'
@dictionary['--...'] = '7'
@dictionary['---..'] = '8'
@dictionary['----.'] = '9'
@dictionary['-----'] = '0'

def decode(str)
  convert = ''
  words = str.split('   ')

  words.each do |word|
    word.split.each do |letter|
      convert += '/' if letter == '/'
      convert += @dictionary[letter].to_s
    end
    convert += ' '
  end
  "The message is: #{convert.strip!}"
end

morse_code = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...'
pp decode(morse_code)
