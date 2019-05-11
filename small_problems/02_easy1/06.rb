def reverse_words(string)

  words = [] 

  string.split.each do |word|
    word.reverse! if word.length >= 5
    words.push(word)
  end

  words.join(' ')
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block') 
puts reverse_words('Launch School')