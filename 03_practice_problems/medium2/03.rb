# my_string will look like: "pumpkinsrutabaga"
# and it's object_id will change.

# my_array will now be: ["pumpkins", "rutabaga"]
# but it's object_id will not change.

# I was wrong - the method takes the values of its parameters
# and stores them in new local variables (a_string_param, an_array_param).
# my_string DOESN'T mutate, because a_string_param is NOT the same thing 
# as my_string. Whereas, my_array DOES mutate - the object passed in has
# a new item shoveled << into it, yet retains the same object_id.