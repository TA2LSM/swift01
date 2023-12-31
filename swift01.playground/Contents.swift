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

// Functions are types...

//func greetMe() {
//    let text = "Hello!"
//    print(text)
//}
//greetMe()

//func greetMe(name: String) {
//    print("Hello \(name)!")
//}
//greetMe(name: "TA2LSM")

//func greetMe(name: String, age: Int? = nil) {
//    print("Hello \(name)! You're \(age) years old...")
//}
//greetMe(name: "TA2LSM", age: 40)
//greetMe(name: "TA2LSM")

//func sum(x: Int, y: Int) -> Int {
////    var sum = x + y
////    return sum
//    return x + y
//}
//print("Sum:", sum(x: 3, y: 5))        // parameters must be given with the definition order
//let sum: Int = sum(x: 123, y: 45)
//print(sum)

//func sum(number1 x: Int, number2 y: Int) -> Int {       // number1 and number2 are internal labels
//    return x + y
//}
//sum(number1: 45, number2: 35)

//func sum(_ x: Int, _ y: Int) -> Int {                   // there is no external label
//    return x + y
//}
//sum(45, 35)

//let feet = ["human": 2, "chicken": 2, "cow": 4]
//func count(item: String) -> Int? {                  // item is an internal and external label
//    return feet[item]
//}
//count(item: "human")
//count(item: "fish")

//func count2(creature item: String) -> Int? {        // item is an internal label
//    return feet[item]
//}
//count2(creature: "human")


// NESTED FUNCTIONS
//let personList = [("Ayse", 10), ("Volkan", 34)]
//func greetAll(people: [(String, Int)]) {
//    // in local scope
//    func greet(name: String, age: Int?) {
//        print("Hello \(name)! You're \(age) years old...")
//    }
//
//    for person in people {
//        greet(name: person.0, age: person.1)
//    }
//}
//greetAll(people: personList)

// inout parameter
//func increment(x: inout Int, by b: Int) {
//    x += b
//}
//var val = 3
//increment(x: &val, by: 4)       // needs val's pointer value
//print(val)

//func multiply(a: Int, b:Int) -> Int {
//    return a * b
//}
//// (Int, Int) -> Int
//let myFunc = multiply
//myFunc(23, 7)

//func square(a: Int) -> Int {
//    return a * a
//}
//
//func getNegative(a: Int) -> Int {
//    return a * -1
//}

//func convert(list: [Int]) -> [String] {
//    var retList: [String] = []
//
//    for item in list {
//        let value = square(a: item)
//        retList.append("\(value)")
//    }
//
//    return retList
//}
//convert(list: [3, 4, 5])

//func convert(list: [Int], convFunc: (Int) -> Int) -> [String] {
//    var retList: [String] = []
//
//    for item in list {
//        let value = convFunc(item)
//        retList.append("\(value)")
//    }
//
//    return retList
//}
//print(convert(list: [3, 4, 5], convFunc: square))
//print(convert(list: [3, 4, 5], convFunc: getNegative))          // do not call function like that --> getNegative(a: <#T##Int#>)

//enum Direction {
//    case north, west, south, east
//
//    func printDirection() {
//        switch self {
//        case .north:
//            print("N")
//        case .west:
//            print("W")
//        case .south:
//            print("S")
//        case .east:
//            print("E")
//        }
//    }
//}
//let myWay = Direction.east
//myWay.printDirection()



//--- 10. CLOSURES ---

//let closure = {
//    parameters -> return_type in
//    //... code ...
//}

//let closure = {
//    print("Hello")
//}
//closure()           // (void) -> (void)

//let closure = { (value: String) -> Int in
//    print("Hello -> \(value)")
//    return 5
//}
//let retVal = closure("32")
//print(retVal)


//var name = "TA2LSM"
////let closure = {
////    print(name)
////}
////closure()
////name = "test"
////closure()


//let closure = { [name] in // capture //
//    print(name)
//}
//name = "test"
//closure()           // prints "TA2LSM"
//print(name)          // prints "test"


//let closure = { (value: String) in
//    print("Hello -> \(value)")
//}
//closure("TA2LSM")


//var square = { (number: Int) -> Int in
//    return number * number
//}
//square(3)

//let names = ["ali", "veli", "ayse"]
////let orderClosure = { (str1: String, str2: String) -> Bool in
////    return str1 < str2
////}
////names.sorted(by: orderClosure)
//
//names.sorted(by: {(str1, str2) -> Bool in
//    return str1 < str2
//})
//// OR
//names.sorted(by: {
//    return $0 < $1
//})
//// OR
//names.sorted(by: {
//    $0 < $1           //$0 means first parameter
//})
//// OR
//names.sorted(by: <)


// Trailing Closures

//func myFunc(closure: (String) -> Void) {
//    closure("TA2LSM")
//}
//
//myFunc(closure: { val in
//    print(val)
//})
//// OR
//myFunc {
//    print($0)
//}

//let names = ["ali", "veli", "ayse"]
//names.contains("ali")
//names.contains(where: { value in
//    return value.count == 3
//})
//// OR
//names.contains{ $0.count == 3 }


//func download(onSuccess: () -> Void, onError: (String) -> Void) {
//    let isSuccess = false;
//
//    if(isSuccess == true) {
//        onSuccess()
//    } else {
//        onError("failed")
//    }
//}
//download(onSuccess: { print("success") }, onError: { message in print(message) })


// before this point all closures are non-escaping
// escaping closure

//func download(onSuccess: @escaping() -> Void) {
//    onSuccess()
//    print("3")
//}
//print("1")
//download( onSuccess:{ print("success") })
//print("2")



//--- 11. FUNCTIONAL SWIFT ---

// 1st class citizen: Int String

//func hello( name: String ) -> String {
//    return "Hello \(name)!"
//}
//hello(name: "TA2LSM")
//let myFunc: (String) -> String = hello          // like function pointer


//func add(_ x: Int, _ y: Int) -> Int {
//    return x + y
//}
//
//func sub(val : Int,  subVal: Int) -> Int {
//    return val - subVal
//}
//
//// higher order function: takes function as a parameter, returns function
//func myFunc(id: String) -> (Int, Int) -> Int {
//    if id == "+" {
//        return add
//    } else {
//        return sub
//    }
//}
//let result = myFunc(id: "-")
//result(10, 4)


// Functional Programming
let students = [
    "ali": [40, 60, 90],
    "ayse": [95, 75, 40],
    "veli": [45, 15, 20],
]
//var passedStudents: [String] = []

// 1st solution -> not immutable
//
//for student in students {
//    var mean: Int = 0
//
//    for note in student.value {
//        mean += note
//    }
//    mean /= student.value.count
//
//    if mean >= 50 {
//        passedStudents.append(student.key)
//    }
//}
//print(passedStudents)


// 2nd solution
//
// map, filter, reduce
//let uppercaseNames = students.map { (key, values) in
//    print(key, ":", values)
//    return key.uppercased()
//}
//print(uppercaseNames)

//let list = [15, 25, 35, 45]
////let filtered = list.filter { item in
////    return item > 30
////}
//// OR
//let filtered = list.filter { $0 > 30 }
//print(filtered)

// start as (0)
//let sum = list.reduce(0) { partialResult, item in
//    return partialResult + item     // result will sstore in "partialResult"
//}

//let studentNames = students.reduce("") { partialResult, item in
//    return partialResult + "," + item.key
//}

let passedStudents = students
    .filter { element in
//        let sum = element.value.reduce(0) { partialResult, val in
//            partialResult + val
//        }
        let sum = element.value.reduce(0) { $0 + $1 }
        let average = sum / element.value.count

        return average > 50
    }
//    .map { item in
//    return item.key
//    }
    .map { $0.key }
print(passedStudents)
