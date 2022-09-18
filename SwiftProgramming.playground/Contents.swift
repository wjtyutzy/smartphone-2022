import UIKit
import Darwin

var greeting = "Hello, playground"

let helloWorld = "Hello World" //let bascially constant

var address = "100, 100 AVE SE Bellevue"
address = "1, 100 Ave NE Bellevue"

var i, j, k : Int

let firstName = "Ashish"
let lastName = "Singh"

print("Name =  \(firstName) \(lastName)")

//comment here

//this is a comment too
//which is multiline

//data type
//integer
let intMaxValue = Int.max

//float or double
let doubleValue = 5.4

let floatValue: Float = 3.4

//binary
let binaryVal = 0b1101
let octal = 0o1435
let hexa = 0x2323AF //hexa

let booleanVal: Bool=true

//tuples
let tupleValue = (404, "Not Found")

let key = tupleValue.0
let value = tupleValue.1

//optionals
//let studentID : Int = 5  //can't do that
var studentID: Int?

//let somethingElse = studentID! + 10  // wan to bypass this

if let id = studentID {
    let somethingElse1 = id + 10
}

if let studentID = studentID {
    let somethingElse2 = studentID + 10
}


//functions
func newFunctionWithNoArgsAndReturn() {
    print("I am inside a function with no args and no return value")
}
//call this function
newFunctionWithNoArgsAndReturn()

func functionWithArgumentsAndNoReturn(firstName: String, lastName: String) {
    print("Name = \(firstName) \(lastName)")
}
//call this function
functionWithArgumentsAndNoReturn(firstName: "Ashish", lastName: "Singh")

//_ firstName:

func functionsWithReturnValue(i: Int, j: Int) -> Int {
    return i + j
}

let addedValue = functionsWithReturnValue(i: 5, j: 6)
print(addedValue)

/**
 void functionWithArgumentsAndNoReturn(String firstName, String lastName) {}
 */

//guard

//catch and exception handling

func funcWhichCanThrowException(i: Int, j: Int) throws -> Int {
    return i/j
}








