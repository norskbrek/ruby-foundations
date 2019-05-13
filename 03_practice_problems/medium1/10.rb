def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# it'll return "no"
# the return value of foo is "yes",
# and that is passed into bar,
# which evaluates as false,
# which causes it to return "no"