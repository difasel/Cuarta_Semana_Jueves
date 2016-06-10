=begin
  
rescue Exception => e
  
end

require 'matrix'

boards_templates =  "POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"

array = []
new_array = []
boards_templates.split('').each_slice(5) {|v| array << v}

p array

p Matrix.rows(array).each(:diagonal).to_a

--------

arr = [[1, 2, 3, 4], [3, 4, 5, 6], [5, 6, 7, 8], [2, 3, 4, 5]]
p arr.size
# pad every row from down all the way up, incrementing the padding. 
# so: go through every row, add the corresponding padding it should have.
# then, grab every column, that’s the end result.

padding = arr.size - 1
padded_matrix = []

arr.each do |row|
    inverse_padding = arr.size - padding
    padded_matrix << ([nil] * inverse_padding) + row + ([nil] * padding)
    padding -= 1    
end
print arr
p padded_matrix.transpose.map(&:compact)

---------
=end

boards_templates =  "POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"
array_matrix = []
boards_templates.split('').each_slice(5) {|v| array_matrix << v}
array_diagonal_der = []
string_aux = ""


padding = 0
padding = array_matrix.size - 1
padded_matrix = []

array_matrix.each do |row|
    inverse_padding = array_matrix.size - padding
    padded_matrix << ([nil] * padding) + row + ([nil] * inverse_padding)
    padding -= 1    
end

p boards_templates.split('').each_slice(5) {|v| p v }
padded_matrix.transpose.map(&:compact).each do |diag1|
  diag1.each do |val|
    string_aux << val
  end
  array_diagonal_der << string_aux
  array_diagonal_der << string_aux.reverse
  string_aux = ""
end

p array_diagonal_der


=begin
-----

boards_templates =  "POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"
array_matrix = []
boards_templates.split('').each_slice(5) {|v| array_matrix << v}
array_diagonal_der = []
string_aux = ""


padding = 0
padding = array_matrix.size - 1
padded_matrix = []

array_matrix.each do |row|
    inverse_padding = array_matrix.size - padding
    padded_matrix << ([nil] * padding) + row + ([nil] * inverse_padding)
    padding -= 1    
end

p boards_templates.split('').each_slice(5) {|v| p v }
padded_matrix.transpose.map(&:compact).each do |diag1|
  diag1.each do |val|
    string_aux << val
  end
  array_diagonal_der << string_aux
  array_diagonal_der << string_aux.reverse
  string_aux = ""
end

p array_diagonal_der




=end



