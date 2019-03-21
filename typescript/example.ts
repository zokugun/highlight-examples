//! Header comment
/**
 * example.ts
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

interface SearchFunc {
  (source: string, subString: string): boolean;
}

var mySearch: SearchFunc;
mySearch = function(source: string, subString: string) {
  var result = source.search(subString);
  if (result == -1) {
    return false;
  }
  else {
    return true;
  }
}

console.log(mySearch('', ''));

//! Class
class Greeter {
    greeting: string;
    constructor(message: string) {
        this.greeting = message;
    }
    greet() {
        return "Hello, " + this.greeting;
    }
}

var greeter = new Greeter("world");

console.log(greeter.greet());

//! Enum
enum Color {
    Red,
    Green,
    Blue
}

console.log(Color.Red);

//! Namespace
namespace Utility {
    export function log(msg) {
        console.log(msg);
    }
    export function error(msg) {
        console.error(msg);
    }
}

Utility.log('');

//! Access Modifiers
class FooBase {
    public x: foo;
    private y: number;
    protected z: number;
}

console.log(new FooBase());

//! Generics
class GreeterGen<T> {
    greeting: T;
    constructor(message: T) {
        this.greeting = message;
    }
    greet() {
        return this.greeting;
    }
}

let greeterGen = new GreeterGen<string>("Hello, world");

console.log(greeterGen.greet());

//! Inheritance
class Animal {
    constructor(public name: string) { }
    move(distanceInMeters: number = 0) {
        console.log(`${this.name} moved ${distanceInMeters}m.`);
    }
}

class Snake extends Animal {
    constructor(name: string) { super(name); }
    move(distanceInMeters = 5) {
        console.log("Slithering...");
        super.move(distanceInMeters);
    }
}

let sam = new Snake("Sammy the Python");

sam.move();

//! Type Union
type NameOrNameArray = string | string[];

function createName(name: NameOrNameArray) {
    if (typeof name === "string") {
        return name;
    }
    else {
        return name.join(" ");
    }
}

console.log(createName(["Sam", "Smith"]));

//! Import
import {Foo} from "./foo";

//! Export
export class Foo {
}

//! Array
let a = [1, 2, 3]
let a = foo[1]

//! Object
let foo = [
	{
		x: 4,
		y: 2
	},
	{
		x: 2,
		y: 4
	}
]

//! async/await
async function printDelayed(elements: string[]) {
    for (const element of elements) {
        await delay(400);
        console.log(element);
    }
}