def encrypt(input_text, offset)
  raise ArgumentError, 'String must not be empty' if input_text == ''
  raise ArgumentError, 'Offset must not be zero' if offset == 0

  alphabet = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '']

  input_text = input_text.upcase

  output = ''

  input_text.each_char do |char|

    i = alphabet.index(char)

    new_i = i

    new_i += offset

    value = alphabet[new_i]

    output += value

  end


  return output
end

p encrypt('t', -3)