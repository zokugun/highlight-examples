//! Header comment
/**
 * example.rs
 * Version 1.0.0
 *
 * Licensed under the MIT license.
 * http://www.opensource.org/licenses/mit-license.php
 **/

//! Comments
// Single line comment
/// Doc comments
/* Multiline
comment */

//! Strings
'C'; '\''; '\n'; '\u7FFF'; // Characters
"foo \"bar\" baz"; // String
r##"foo #"bar"# baz"##; // Raw string with # pairs
b'C'; b'\''; b'\n'; // Bytes
b"foo \"bar\" baz"; // Byte string
br##"foo #"bar"# baz"##; // Raw byte string with # pairs

//! Numbers
123i;                              // type int
123u;                              // type uint
123_u;                             // type uint
0xff_u8;                           // type u8
0o70_i16;                          // type i16
0b1111_1111_1001_0000_i32;         // type i32

123.0f64;        // type f64
0.1f64;          // type f64
0.1f32;          // type f32
12E+99_f64;      // type f64

//! Booleans
true; false;

//! Functions and macros
println!("x is {}", x);
fn next_two(x: int) -> (int, int) { (x + 1i, x + 2i) }
next_two(5i);
vec![1i, 2, 3];

//! Attributes
#![warn(unstable)]
#[test]
fn a_test() {
	// ...
}

//! Closure parameters and bitwise OR
let x = a | b;
let y = c || d;
let add_one = |x: int| -> int { 1i + x };
let printer = || { println!("x is: {}", x); };

//! foreach
let v = &["apples", "cake", "coffee"];

for text in v {
    println!("I like {}.", text);
}

//! for/range
let mut sum = 0;
for n in 1..11 {
    sum += n;
}
assert_eq!(sum, 55);

//! Attributes
#[cfg(target_os = "linux")]
mod bar {
}