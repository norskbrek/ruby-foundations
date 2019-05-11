def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep
p eval(how_deep)

# 42?
# OK - so #eval takes that goofy string and evaluates it as if
# it's a chain of method calls on number.