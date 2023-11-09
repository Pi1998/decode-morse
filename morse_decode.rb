MORSE_CODES = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z',
    ' ' => ' '
}.freeze

# Decoding letter
def decode_string(morse_string)
    MORSE_CODES[morse_string] || ''
end

morse_code1 = ".-"
decoded_string = decode_string(morse_code1)
puts decoded_string


# Decoding word
def decode_word(morse_word)
    morse_word.split.map { |morse_string| decode_string(morse_string) }.join
end

morse_code2 = "-- -.--"
decoded_word = decode_word(morse_code2)
puts decoded_word


# Decoding message
