#!/usr/bin/env ruby

require 'csv'

input = CSV.read('input.csv')[0]

print 'Enter Elements per Row: '
elems = gets.chomp.to_i

string = ''

until input == []
  row = input.pop(elems)
  string = string + row.pop.to_i.to_s
  until row == []
    string += ', ' + row.pop.to_i.to_s
  end
  string = string + "\n"
end

IO.write('output.csv', string);
