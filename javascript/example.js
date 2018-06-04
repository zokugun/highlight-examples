//! Header comment
/**
 * javascript.js
 * Version 1.0.0
 *
 * Licensed under the MIT license.
 * http://www.opensource.org/licenses/mit-license.php
 **/

//! Multi-lines comment
/*
foo

bar
*/

//! Link in comment
// http://lea.verou.me
/* http://lea.verou.me */

//! Strings inside comments
// "foo"
/* "foo" */

//! Regex inside single line comment
// hey, /this doesn’t fail!/ :D

//! Variable assignment
var foo = "bar", baz = 5;

//! Operators
(1 + 2 * 3)/4 >= 3 && 4 < 5 || 6 > 7

//! Indented code
if(true) {
	while(true) {
		doSomething();
	}
}

//! Regex with slashes
var foo = /([^/])\/(\\?.|\[.+?])+?\/[gim]{0,3}/g;

//! Regex that ends with double slash
var bar = /\/\*[\w\W]*?\*\//g;

//! Nested strings
var foo = "foo", bar = "He \"said\" 'hi'!"

//! Strings with slashes
env.content + '</' + env.tag + '>'
var foo = "/" + "/";
var foo = "http://prismjs.com"; // Strings are strings and comments are comments ;)

//! Two or more division operators on the same line
var foo = 5 / 6 / 7;

//! A division operator on the same line as a regex
var foo = 1/2, bar = /a/g;
var foo = /a/, bar = 3/4;

//! An object
let foo = {
	bar: {
		qux: 42
	}
}

//! get the time
const start = new Date().getTime();
const start = new GMTDate().getTime();

setTimeout(function() {
	console.log('hello');
}, 1000);

//! Regex "y" and "u" flags
/[a-zA-Z]+/gimyu

//! Loop for/of
for(let x of y) { }

//! Function
function foo() {
	return 'Hello World!';
}

//! Import
import React from 'react'
import { foo as bar } from "file.js"

//! Export
export default bar

//! Template strings
`Only on ${y} one line`
`This template string ${x} is on

multiple lines.`
`40 + 2 = ${ 40 + 2 }`
`The squares of the first 3 natural integers are ${[for (x of [1,2,3]) x*x].join(', ')}`


//! Template with properties
const DIV = styled.div`
	animation: ${props => props.delay} ${props => keyframes`${props.animation}`};
`;

//! React
export default class Page extends React.Component {
	render() {
		const elapsed = Math.round(this.props.elapsed  / 100)
		const seconds = elapsed / 10 + (elapsed % 10 ? '' : '.0' )
		
		return (
			<div>
				<label>seconds:</label>
				<div class="value">{seconds}</div>
			</div>
		)
	}
}

//! Comments with definitions
lang.global.extends('Math', {
	/*
	Limit a value.
	
	@function limit
	@param	{number}	value	The value to limit
	@param	{number}	min		The min limit
	@param	{number}	max		The max limit
	@return {number}
	@static
	*/
	limit: function(value, min, max) {
		return Math.min(max, Math.max(value, min));
	}
});