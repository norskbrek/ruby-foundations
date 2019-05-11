def reverse_sentence(sentence)
  sentence.split.reverse.join(' ')
end

puts reverse_sentence('')
puts reverse_sentence('Hello World')
puts reverse_sentence('Reverse these words')