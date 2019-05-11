advice = "Few things in life are as important as house training your pet dinosaur."

altered_advice = advice.split(' ')
altered_advice[6] = "urgent"

puts altered_advice.join(' ')

# LAUNCH SOLUTION (better)
advice.gsub!('important', 'urgent')
