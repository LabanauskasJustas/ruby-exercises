# frozen_string_literal: true

def substrings(word, array_of_substrings)
  substrings_found = Hash.new(0)
  normalized_word = word.downcase

  array_of_substrings.each do |substring|
    normalized_substring = substring.downcase
    occurrences = normalized_word.scan(normalized_substring).length
    substrings_found[substring] += occurrences if occurrences.positive?
  end

  substrings_found
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

puts substrings('below', dictionary) if $PROGRAM_NAME == __FILE__
puts substrings('Howdy partner, sit down! How\'s it going?', dictionary) if $PROGRAM_NAME == __FILE__
