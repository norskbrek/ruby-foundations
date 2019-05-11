vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  occurrences = {}

  for item in array
    occurrences[item] = array.count(item)
  end

  occurrences.each do |item, count|
    puts "#{item} => #{count}"
  end
end

count_occurrences(vehicles)