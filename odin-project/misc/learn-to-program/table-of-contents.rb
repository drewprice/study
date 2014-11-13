contents = ["One", "Two", "Three"]

line_width = 40
puts "Table of Contents".center(line_width)
puts ""
puts "Chapter 1: One".ljust(line_width/2) + "...1".rjust(line_width/2)
puts "Chapter 2: Two".ljust(line_width/2) + "...2".rjust(line_width/2)
puts "Chapter 3: Four".ljust(line_width/2) + "...3".rjust(line_width/2)