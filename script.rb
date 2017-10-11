#!/usr/bin/env ruby

input = CSV.read('input.csv')

print 'Enter Elements per Row: '
elems = gets.chomp.to_i

CSV.open('output.csv', 'wb') do |out|
  until input == []
    out << input.pop elems
  end
end
