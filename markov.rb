#!/usr/bin/env ruby

def tokenize(words)
  words.downcase.split(/\W+/)
end

words = tokenize(ARGF.read)

key_length = 2
data = {}

min, max = 0, key_length

while max < words.size do
  key = words[min..(max-1)].join(' ')
  data[key] = [] if data[key].nil?

  data[key] << words[max]

  min += 1
  max += 1
end

key =  data.keys.sample
out = key

25.times do
  out = "#{out} #{data[key].sample}"
  key = out.split()[-2..-1].join(' ')
end

puts out
