# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

def num_repeats(string)
    count = 0
    string.each_char do |l1|
        if string.include?(l1)
            count += 1
        end
    end
    count
end

#inputs: a string
#process: A loop within a loop.  The outer loop holds one letter.  The inner loop iterates through 
# the string and increments count by one if (current_letter == i).  Then that count number is passed
# to a different variable in the outer loop.  
#outputs: a number (the amount of letters that repeat)


# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
# one character is repeated
puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)
