#! Header comment
###
 # example.coffee
 # Version 1.0.0
 #
 # Licensed under the MIT license.
 # http://www.opensource.org/licenses/mit-license.php
###

#! Comments
# This is a comment
### This is a
multi-line comment###

#! Strings
'foo \'bar\' baz'
"foo \"bar\" baz"
'Multi-line
strings are supported'
"Multi-line
strings are supported"
''' 'Block strings'
are supported too'''
""" "Block strings"
are supported too"""

#! String interpolation
"String #{interpolation} is supported"
'This works #{only} between double-quoted strings'

#! Object properties
kids =
  brother:
    name: "Max"
    age:  11
  sister:
    name: "Ida"
    age:  9

#! Regexps
/normal [r]egexp?/;
/// ^(
  mul\t[i-l]ine
  regexp          # with embedded comment
) ///

#! Classes
class Animal
  constructor: (@name) ->
  move: (meters) ->
    alert @name + " moved #{meters}m."

class Snake extends Animal
  move: ->
    alert "Slithering..."
    super 5

class Horse extends Animal
  move: ->
    alert "Galloping..."
    super 45

sam = new Snake "Sammy the Python"
tom = new Horse "Tommy the Palomino"

sam.move()
tom.move()

#! Inline JavaScript
`alert("foo")`