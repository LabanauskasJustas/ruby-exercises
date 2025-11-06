# frozen_string_literal: true

def caesar_cipher(message, shift)
  # Implement a Caesar cipher that takes in a string and the shift factor and then outputs the modified string using a right shift

  message.chars.map do |char|
    if char.match?(/[A-Za-z]/)
      base = char.ord < 91 ? 'A'.ord : 'a'.ord
      (((char.ord - base + shift) % 26) + base).chr
    else
      char
    end
  end.join
end

puts caesar_cipher('What a string!', 5) if $PROGRAM_NAME == __FILE__
