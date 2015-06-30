# Write a method that takes in an integer `offset` and a string.
# Produce a new string, where each letter is shifted by `offset`. You
# may assume that the string contains only lowercase letters and
# spaces.
#
# When shifting "z" by three letters, wrap around to the front of the
# alphabet to produce the letter "c".
#
# You'll want to use String's `ord` method and Integer's `chr` method.
# `ord` converts a letter to an ASCII number code. `chr` converts an
# ASCII number code to a letter.
#
# You may look at the ASCII printable characters chart:
#
#     http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters
#
# Notice that the letter 'a' has code 97, 'b' has code 98, etc., up to
# 'z' having code 122.
#
# You may also want to use the `%` modulo operation to handle wrapping
# of "z" to the front of the alphabet.
#
# Difficulty: hard. Because this problem relies on outside
# information, we would not give it to you on the timed challenge. :-)

  


def caesar_cipher(offset, string)
  string_a = string.split("")
  offset_a = []
  string_a.each do |i|
    offset_a << (i.ord + offset)
  end
  offset_a.each do |i|
    if i == 32
      offset_b << 32
      
    elsif# here is the hard part of the wrap around.  Somehow use the modlus operator. new_char_i = (char_i + offset) % 26 or something like it
      #
    else
      offset_b << i.chr 
  end
  offset_b.join
end

#inputs: an integer(the offset number) and a string
#process: accept the string. create var offset_string. iterate through the string changing each character by 
#(offset) and feeding them into offset_string.   
#outputs: a string


# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'caesar_cipher(3, "abc") == "def": ' +
  (caesar_cipher(3, 'abc') == 'def').to_s
)
puts(
  'caesar_cipher(3, "abc xyz") == "def abc": ' +
  (caesar_cipher(3, 'abc xyz') == 'def abc').to_s
)
