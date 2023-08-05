import Foundation

// let means constant value
let name: String = "ta2lsm"
let age: Int = 39

// type safety: name can not to be assigned as a number
// name = 36

// var means variable value
var year: Int = 2022
year = 1983

// "Double" expression also not needed
let pi: Double = 3.14159265359

// Bool
let isStarted: Bool = true

// type inference: no need to declera as a string
let name2 = "John 😍"
let surname2 = "Smith"

//print("Person:", name, name2, age, year)
//print("Name:", name, "Age:", age, "Birthyear:", year)

//print(NSString(format: "%02.3f", pi))

//--- OK ---
let x: Int
x = 5
//--- ERROR ---
// let y: Int
// print(y)

let num1 = 5
let num2 = 2

num1 + num2
num1 - num2
num1 * num2
num1 / num2
let result = Double(num1) / Double(num2)
//print(result)

//--- STRING ---
let description = """
this is a
multiline
string
"""
// print(description)git commit cmd line codes


// concatanation
var fullname2 = name2 + " " + surname2
//print(name2)
//print(fullname2)

fullname2.count
fullname2.isEmpty
fullname2.append(" ___")
fullname2 += "abc"

// string interpolation
let count = 45
print("Count value is: \(count)")
print("Some strings: \(2 * 3), \(123.45), \(true)")
