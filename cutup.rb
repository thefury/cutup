#!/usr/bin/env ruby

def cut_count(min=1, range=4)
  min, range = 1, 4
  rand(range) + min
end

def tokenize(words)
  words.downcase.split(/\W+/)
end

words = tokenize(ARGF.read)

phrases = []
until words.empty?
  w = words.shift(cut_count)
  phrases << w.join(' ')
end

puts "-- PHRASES --"
puts phrases.shuffle

puts
puts "-- JOINS --"
phrases.size.times { puts "#{phrases.sample} #{phrases.sample}" }
