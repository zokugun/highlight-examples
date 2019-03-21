#! Header comment
=begin
= example.rb
= Version 1.0.0
=
= Licensed under the MIT license.
= http://www.opensource.org/licenses/mit-license.php
=end

#! Comments
# This is a comment
=begin
Multi-line
comment
=end

#! Strings
"foo \"bar\" baz"
'foo \'bar\' baz'

#! Regular expressions
/foo?[ ]*bar/

#! Variables
$foo = 5;
class InstTest
  def set_foo(n)
    @foo = n
  end
  def set_bar(n)
    @bar = n
  end
end

#! Symbols
mystring = :steveT;

#! String Interpolation
"foo #{'bar'+my_variable}"

#! for/range
x = gets.chomp.to_i

for i in 1..x do
  puts i
end

puts "Done!"