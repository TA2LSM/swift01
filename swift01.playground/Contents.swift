import Foundation

//--- 2. BASIC TYPES ---

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
// print(x)
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
let count = 33
//print("Count value is: \(count)")
//print("Some strings: \(2 * 3), \(123.45), \(true)")



//--- 3. CONTROL STATEMENTS ---

let isCompleted = false
let text01 = ""

// needs to be used >> "{}"
//if isCompleted {
//    print("Completed")
//}
//else {
//    print("Not completed")
//}

//if text01.isEmpty { print("String is empty!") }
//else { print("String is not empty...") }

//if text01.count == 0 { print("String is empty!") }
//else { print("String is not empty...") }

//if count < 30 {
//    print("less than 30")
//} else if count > 50 {
//    print("greater than 50")
//} else {
//    print("between 30 and 50")
//}

//if count >= 30 && !text01.isEmpty {
//    print("All ok")
//}

//if count < 30 || text01.isEmpty {
//    print("All ok")
//}

//switch count {
//case 30:
//    print("count is 30")
//    // break is not needed!!!!
//case 31...39:
//    print("count is between 31 and 39")
//case 40, 41, 42, 43, 44:
//    print("count is between 40 and 44")
//default:
//    print("count is not in scope:", count)     // without default compiler will give an error
//}

// range opertators "..<" "..."
// 0..<5 --> 0, 1, 2, 3 and 4
// 0...5 --> 0, 1, 2, 3, 4 and 5

//switch text01 {
//case "ta2lsm":
//    print("text01 is 'ta2lsm'")
//default:
//    print("text01 is not 'ta2lsm'")
//}

// for, while
//let range = 0..<10
//
//for i in range {
//    print(i)
//}

// not available after swift 3
//for var i = 0; i < 10; ++i {
//    print(i)
//}

//let names = ["ali", "veli", "ayse", "x", "ta2lsm"]
//for i in 0...2 {
//    print(names[i])
//}
// OR
//for name in names {
//    if name == "veli" {continue}
//    if name == "x" {break}
//    print(name)
//}

//var loopCnt = 5
//while loopCnt > 0 {
//    print(loopCnt)
//    loopCnt -= 1
//}

// do-while
//repeat {
//    print(loopCnt)
//    loopCnt -= 1
//} while loopCnt > 0



//--- 4. OPTIONALS ---

let age2: Int?          // it could be an integer or nil (null)
//let text02: String?     // it could be a string or nil (null)
//
age2 = 5        // optional(int) -> int 5

//if true {
//    text02 = "test"
//} else {
//    text02 = nil
//}
//print(text02)           // prints -> Optional("test")

// optional binding
//if let value = age2 {
//    print("\(2022 - value)")
//}

// guard let (early exit)
// if age is a number take its value to val register and continue OR exit
// this expression MUST be defined in any function
//guard let val = age2 else {
//    return
//}


// nil coalescing operator (??)
// if age2 has a value use it or give a default value
//let val: Int = age2 ?? -1   // if age2 is nil -> val = -1 otherwise val = age2
//print(val)


//let name3: String = "ta2lsm"

//let char: Character? = name.first
//print(char)     // prints -> Optional("t")

//if let char2 = name.first {
//    print(char2)     // prints -> t
//}

// optional chaining
//let val2: Character? = name.first?.description.first // ? will be automatically added at the right side

// unwrapped to use val2
//print(val2)     // prints -> Optional("t")
//print(val2!)    // forced unwrapping. we know val2 will be here. prints -> t

//let num4: Int? = 30
//num4 + 5      // error

//unwrapped ( SAFE )
//if var num4 = num4 {
//    num4 + 5
//}

// OR forced unwrapped ( RISKY! )
//num4! + 5       // risky! if there wasn't any value in num4 program would crash!
//print("\(num4)")

// impicitly unwrapped optional ( RISKY! )
var num4: Int!

num4 = 5
num4 + 1        // OK

//num4 = nil
//num4 + 7        // CRASH !!


//--- 5. ENUMS ---
