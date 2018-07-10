//! Header comment
/**
 * example.go
 * Version 1.0.0
 *
 * Licensed under the MIT license.
 * http://www.opensource.org/licenses/mit-license.php
 **/

//! Comments
// This is a comment
/* This is a comment
on multiple lines */

//! Numbers
42
0600
0xBadFace
170141183460469231731687303715884105727
0.
72.40
072.40
2.71828
1.e+0
6.67428e-11
1E6
.25
.12345E+5
0i
011i
0.i
2.71828i
1.e+0i
6.67428e-11i
1E6i
.25i
.12345E+5i

//! Runes and strings
'\t'
'\000'
'\x07'
'\u12e4'
'\U00101234'
`abc`
`multi-line
string`
"Hello, world!"
"multi-line
string"

//! Functions
func(a, b int, z float64) bool { return a*b < int(z) }

//! Full example
package main
import "fmt"

func sum(a []int, c chan int) {
	sum := 0
	for _, v := range a {
		sum += v
	}
	c <- sum // send sum to c
}

func main() {
	a := []int{7, 2, 8, -9, 4, 0}

	c := make(chan int)
	go sum(a[:len(a)/2], c)
	go sum(a[len(a)/2:], c)
	x, y := <-c, <-c // receive from c

	fmt.Println(x, y, x+y)
}

//! Struct
type Email struct {
	SMTP     string
	Password string
	Port     string
	From     string
	To       []string
	Subject  string
}