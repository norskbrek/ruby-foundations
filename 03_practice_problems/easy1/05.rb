puts (10..100).include?(42)

# launch uses #cover? instead.
# #include? returns true if the element is in the range,
# and false if otherwise.
# #cover? returns true if the object is between the begin
# and the end of the range.