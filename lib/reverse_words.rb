# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)   #"I can be an   engineer"

  if my_words == nil
    return nil
  end

  def reverse_word(word)
    i = 0
    n = word.length - 1

    while i < n
      letter = word[i]
      word[i] = word[n]
      word[n] = letter
      i += 1
      n -= 1
    end
    return word
  end

  i = 0
  n = i
  while i <= my_words.length do
    if my_words[i] == " " || i == my_words.length
      my_words[n...i] = reverse_word(my_words[n...i])
      n = i + 1
      puts my_words
    end
    i += 1
    puts i
  end
end

# puts "enter a sentence: "
# sentence = gets.chomp
# p reverse_words(sentence)
