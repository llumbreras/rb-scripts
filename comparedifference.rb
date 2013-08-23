#!/usr/bin/ruby

def compare_difference (file01, file02)
  listing01 = File.open(file01).readlines
  listing02 = File.open(file02).readlines

  puts "The following files have been included:"
  puts listing02 - listing01

  puts "The following files have been removed:"
  puts listing01 - listing02
end

compare_difference("movies_v01.txt","movies_v02.txt")


