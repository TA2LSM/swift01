import Foundation

//--- 2. BASIC TYPES ---

// let means constant value
//let name: String = "ta2lsm"
//let age: Int = 39
//
//// type safety: name can not to be assigned as a number
//// name = 36
//
//// var means variable value
//var year: Int = 2022
//year = 1983
//
//// "Double" expression also not needed
//let pi: Double = 3.14159265359
//
//// Bool
//let isStarted: Bool = true
//
//// type inference: no need to declera as a string
//let name2 = "John 😍"
//let surname2 = "Smith"

//print("Person:", name, name2, age, year)
//print("Name:", name, "Age:", age, "Birthyear:", year)

//print(NSString(format: "%02.3f", pi))

//--- OK ---
//let x: Int
//x = 5
//// print(x)
////--- ERROR ---
//// let y: Int
//// print(y)
//
//let num1 = 5
//let num2 = 2
//
//num1 + num2
//num1 - num2
//num1 * num2
//num1 / num2
//let result = Double(num1) / Double(num2)
////print(result)
//
////--- STRING ---
//let description = """
//this is a
//multiline
//string
//"""
//// print(description)git commit cmd line codes
//
//
//// concatanation
//var fullname2 = name2 + " " + surname2
////print(name2)
////print(fullname2)
//
//fullname2.count
//fullname2.isEmpty
//fullname2.append(" ___")
//fullname2 += "abc"
//
//// string interpolation
//let count = 33
////print("Count value is: \(count)")
////print("Some strings: \(2 * 3), \(123.45), \(true)")
//
//
//
////--- 3. CONTROL STATEMENTS ---
//
//let isCompleted = false
//let text01 = ""

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

//let age2: Int?          // it could be an integer or nil (null)
//let text02: String?     // it could be a string or nil (null)
//
//age2 = 5        // optional(int) -> int 5

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
//var num4: Int!
//
//num4 = 5
//num4 + 1        // OK

//num4 = nil
//num4 + 7        // CRASH !!



//--- 5. ENUMS (Enumarations) ---

//enum Direction {
////    case north
////    case west
////    case east
////    case south
//  case north, west, east, south
//}
//// if some other values would be added to this enum above in the future
//// switch-case structure that has no "default" field in the code will be
//// in an error mode when compiled. User can easily find those codes...
//
////var direction: Direction = .south
//var yön1: Direction = Direction.east
//var yön2 = Direction.west
//var yön3: Direction = .south
//yön3 = .north
//print(yön1, yön2, yön3)

//if yön3 == .north {
//    print("Kuzeye gidiliyor...")
//}
//
//switch yön1 {
//case .east:
//    print("Doğuya gidiliyor...")
//case .north:
//    print("Kuzeye gidiliyor...")
//case .west:
//    print("Batıya gidiliyor...")
//case .south:
//    print("Güneye gidiliyor...")
//}

//switch yön1 {
//case .east, .west:
//    print("Yatayda gidiliyor...")
//case .south, .north:
//    print("Dikeyde gidiliyor...")
//// no need to use default because we are using every possible cases above
//default:
//    print("Ooopss...")
//}

// feature extending (CaseIterable)
//enum UserRole: CaseIterable {
//    case admin, user, restricted
//}

//for role in UserRole.allCases {
//    print(role)
//}

//enum UserRole: Int, CaseIterable {
//enum UserRole: Int {
//    case admin = 2, user, restricted    // admin = 2, user = 3, restricted = 4
//}
//
//enum Gender: String {
//    case male, female, nonbinary        // male = "male", female = "female", nonbinary = "nonbinary"
//}
//
//let role = UserRole(rawValue: 3)    // let role: UserRole? = UserRole(rawValue: 3)
//print(role)     // Optional(__lldb_expr_18.UserRole.user)
//let role2 = UserRole(rawValue: 9)
//print(role2)    // nil
//
//role?.rawValue              // 3
//UserRole.admin.rawValue     // 0
//
//let gender = Gender(rawValue: "female")
////let gender = Gender(rawValue: "female")!    // forced unwrapping
//print(gender)               // Optional(__lldb_expr_20.Gender.female)
//print(gender!)              // female



//enum UserRole {
//    case admin(Int)
//    case user
//    case restricted(reason: String)         // reason is an associated value (no need to write "reason" by the way)
//}
//
//let role = UserRole.restricted(reason: "kicked")        // user restricted because of banned
////print(role)     // restricted(reason: "banned")
//
//switch role {
//case .admin:
//    print("admin")
//case .admin(let level) where level > 1:
//    print("super admin")
//case .user:
//    print("user")
////case .restricted:
////    print("restricted")
//
////case .restricted(reason: let reason):
////    print("restricted because \(reason)")       // \(reason) >> interpolation
////case .restricted(reason: let reason):
////    if(reason == "kicked") {
////        print("Restricted. Need operation...")
////    } else if (reason == "banned") {
////        print("BANNED")
////    }
//
//case .restricted(reason: let reason) where reason == "banned":
//    print("BANNED")
//
////case .restricted(reason: let reason) where reason == "kicked":
////    print("Restricted. Need operation...")
////default:
////    break
//
//case .restricted:
//    print("Restricted. Need operation...")
//}


//enum UserRole {
//    case admin
//    case user
//    case restricted(reason: String)         // reason is an associated value (no need to write "reason" by the way)
//
//    // computed property
//    var isBanned: Bool {
//        switch self {
//        case .restricted(reason: let reason) where reason == "banned":
//            return true
//        default:
//            return false
//        }
//    }
//
//    // functions ...
//}
//
//let role = UserRole.admin
//role.isBanned               // false
//
//let role2 = UserRole.restricted(reason: "banned")
//role2.isBanned              // true


// Optionals built on enums
//let age: Int? = 39
//
////if let age = age {
////    print("age = \(age)")
////}
//
//switch age {
//case .none:
//    print("nil")        // optional
////case .some(_):            // _ means don't cared value
//case .some(let val):
//    print(val)
//}



//--- 6. TUPLES ---

//var error: (Int, String) = (404, "Not Found")

// nested tuple
//let nestedTuple = (1, "", true, 3.14, (404, "not found"), error)        // do not use so many values in tuple
//let tuple = (404, "not found", true, 123, ["a", "b"])

//
//error.0             // 404
//
//let (code, message) = error
//print(code, message)
//
//let(code1, _) = error
//print(code1)
//
//error.0 = 500
//error.1 = "Internal server error"
//print(error.0, error.1)



//--- 7. ARRAY & SET ---

// ARRAY

//let numbers: [Int] = [34, 63, 743, 545]             // literal syntax
//var students: [String] = ["ali", "veli", "ayse"]
//print(students[5])        // invalid index causes crash! - students[2]: subscript syntax

// Never crushes !!!
//if students.count > 1 {
//    print(students[1])
//}

//var items = Array(repeating: "ta2lsm", count: 10)
//print(items.count, items)
//
//items[0] = "test"
//print(items.count, items)

//items.append("added item")                 // add to the end
//items += ["added item2", "a", "b", "c"]     // add to the end
//items.append(contentsOf: students)          // add students to the end of the items
////print(items.count, items)
//
//items.insert("inserted item", at: 2)        // add to the index 2
////print(items.count, items)
//
// safe removing
//if items.count > 3 {
//    items.remove(at: 3)                       // remove index 3
//    //print(items.count, items)
//}
//
//while(!items.isEmpty) {
//    items.remove(at: 0)
//    print(items.count, items)
//}

//var objects = Array<Int>()          // creates empty int array
//var objects [Int] = Int()

//students.append(contentsOf: ["sema", "fatma"])
//students[1...2] = ["x"]                         // replaces between index 1 to 2 with "x"
//students[2...3] = []                            // ereases between index 2 to 3
//print(students)

// iteration
//for student in students {
//    print(student)
//}

//for (i, student) in students.enumerated() {
////    print("\(i). index is", student)
//    print("\(i). index is \(student)")
//}

//for index in 0..<students.count {
//    print("\(index). index is \(students[index])")
//}

//students.forEach { student in
//    print(student)
//}


// SET

// has unique values
// unordered

// all of the arrays are same below
//var students = ["ali", "veli", "ayse"]
//var students2: Array<String> = ["ali", "veli", "ayse"]
//var students3: [String] = ["ali", "veli", "ayse"]

// some string array methods are different and some of them are not available when using "SET"
// there is no index because sets are unordered

//var students4: Set<String> = ["ali", "veli", "ayse", "ali"]
//print(students4)        // will be printed as unordered and has only single "a"

//for student in students4 {
//    if student == "c" {
//        print("veli bulundu")
//    }
//}

//students4.insert("fatma")       // inserted: true
//students4.insert("veli")        // inserted: false
// insert method is something like that
//if students.contains("veli") {
//    return
//}
//print(students4)

//var emptySet: Set<Int> = []
//print(emptySet)

//var items1: Set<Int> = [1, 2, 25, 37, 235]
//let items2: Set<Int> = [5, 90, 3, 2]
//let items3: Set<Int> = [2, 37, 25]
//
//items3.isSubset(of: items1)             // true
//items1.isSuperset(of: items3)           // true
//items1.intersection(items2)             // 2
//items2.union(items1)                   // 5, 2, 3, 90, 25, 37, 235, 1
//
//// In swift generally "...ing" adding means:
//items1.subtract(items3)                // items1 = [1, 235]
//var items4 = items1.subtracting(items3)  // 1, 235
//print(items4)



//--- 8. DICTIONARY ---

// access with key value
// has unique values
// unordered

// these methods are not available because of unordered type: append, insert ...etc

//var emptyDictionary: [String: String] = [:]                             // empty dictionary
//var dictionary: [String: String] = ["name": "isim", "book": "kitap"]   // [String: String] not needed
////print(dictionary)
//
////var ages = ["ahmet": 13, "ayse": 20, "ali": 17]  // [String: Int]
//var ages = [
//    "ahmet": (13, "Istanbul"),
//    "ayse": (20, "Izmir"),
//    "ali": (17, "Mugla")
//]  // [String: Tuple] tuples must be the same type Tuple >> (Int, String)
////print(ages)
//
//var notlar: [String: [Int]] = [
//    "ahmet": [50, 20, 90],
//    "ayse": [30, 50, 50],
//    "ali": [70, 65, 95]
//]
//
//var cityCodes: [Int: String] = [
//    1: "Adana",
//    6: "Ankara",
//    34: "Istanbul",
//    35: "Izmir",
//]
//print(cityCodes)

//for code in cityCodes {
//    print(code)
//}

//for value in cityCodes.enumerated() {
//    print(value.element)
//    print(value.offset)
//    print(value.self)
//}

//let city = cityCodes[34]
//print(city)                   // Optional("Istanbul") because it wouldn't be 34 in the dictionary
//print(cityCodes[34]!)         // not recommended

//if let city = cityCodes[34] {
//    print(city)             // Istanbul if there would be 34 in the dictionary
//}

//cityCodes[7] = "Bursa"
//print(cityCodes)
//cityCodes[7] = "Antalya"
//print(cityCodes)
//
//dictionary["mouse"] = "fare"
//dictionary["name"] = "ad"
//print(dictionary)

//dictionary.removeValue(forKey: "mouse")         // delete key "mouse". returns "mouse" when succeeded
////dictionary.removeAll()
//print(dictionary)
//
//let result = dictionary.removeValue(forKey: "mouse")
//if result == nil {
//    print("key not found")
//}

//let keys = Array(dictionary.keys)               // ordered but randomly everytime
//let values = Array(dictionary.values)

//for key in keys {
//    //print(dictionary[key])
//    let value = dictionary[key]
//    print(value)
//}

//let random = dictionary.randomElement()
//print(random)



//--- 9. FUNCTIONS ---

