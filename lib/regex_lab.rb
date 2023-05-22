def starts_with_a_vowel?(word)
    /^[aeiou]/i.match?(word)
end

def words_starting_with_un_and_ending_with_ing(text)
    # words_string.scan(/\bun\w+ing\b/)
    text.scan(/\bun\w+ing\b/i)
end

def words_five_letters_long(text)
    # words_string.scan(/\b\w{5}\b/)
    text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
    /^[A-Z].*[[:punct:]]$/.match?(text)
end

def valid_phone_number?(phone_number)
    # /^\d{10}$|^(\d{3}-){2}\d{4}$|^(\(\d{3}\)\s?){1}\d{3}-\d{4}$/.match?(phone)
    # /^\d{10}$|^(\d{3}-){2}\d{4}$|^(\(\d{3}\)\s?)?\d{3}-\d{4}$/.match?(phone)
    # /^\d{10}$|^(\d{3}-\d{3}-\d{4})$|^(\(\d{3}\)\s*\d{3}-\d{4})$/.match?(phone)
    clean_phone_number = phone_number.gsub(/\D/, "") # Remove non-digit characters from the phone number
  /^\d{10}$/.match?(clean_phone_number)
    # /^\d{3}-\d{3}-\d{4}$|^\(\d{3}\)\s*\d{3}-\d{4}$|^\d{10}$/.match?(phone)
end
