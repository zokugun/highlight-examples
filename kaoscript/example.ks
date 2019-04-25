//! Header comment
/**
 * example.ks
 * Version 1.0.0
 *
 * Licensed under the MIT license.
 * http://www.opensource.org/licenses/mit-license.php
 **/

//! Comments
// This is a comment
/* This is a comment
on multiple lines */

//! Import
import 'path'

import 'language' => Lang {
	func createToken
	sealed class Lexer
	sealed class Parser
	sealed class Token
}

//! Class
class Greeter {
    private {
        greeting: String
    }
    constructor(message: string) {
        this.greeting = message
    }
    greet() {
        return `Hello, \(@greeting)`
    }
}

const greeter = new Greeter("world")

console.log(greeter.greet())

//! Enum
enum Color {
    Red
    Green
    Blue
}

console.log(Color.Red)

//! Namespace
namespace Utility {
    export func log(msg) {
        console.log(msg)
    }
    export func error(msg) {
        console.error(msg)
    }
}

Utility.log('')

//! Loop
for const value in values {
    
}