import Foundation

// To be able to have a collection of Strings (a list), we would use an Array to Store those Objects

// Arrays hold multiple of the same piece of data, while sets dont hold multiple oF THE SAME PIECE OF DATA

// Arrays, Sets

// We can refference myTitle1 and 2 in our Code
// But we dont have a way to combine both and refference them together
// They are completely seperate
var myTitle: String = "Hello, World!"
var myTitle2: String = "Hello World again!"


// Tuple
func doSomething(value: (title1: String, title2: String)) {

}

doSomething(value(myTitle, myTitle2))

// Struct or Class (Custom data model)
struct TitlesModel {
    let title1: String
    let title2: String
}

func doSomething2(value: TitlesModel) {

}
doSomething2(value: TitlesModel(title1: myTitle, title2: myTitle2))


// ---------------------------------------------------------------

let apple = "Apple"
let orange = "Orange"

// Strings
let fruits1: [String] = ["Apple", "Orange"]

// Objects reffering to the let constant declared below the separation mark
let fruits2: [String] = [apple, orange]
let fruits3: Array<String> = [apple, orange]

let myBools: [Bool] = [true, false, true, true, true, true, false]


func doSomething3(value: [String]) {

}


var fruitsArray: [String] = ["Apple", "Orange", "Banana", "Mango"]

let count = fruitsArray.count
let firstItem = fruitsArray.first
let lastItem = fruitsArray.last

if let firstItem = fruitsArray.first {
    // unwrap first item
}


// fruitsArray = fruitsArray + ["Banana", "Mango"]

// fruitsArray.append("Banana")
// fruitsArray.append("Mangoo")

// Using the append(contentsOf:) method
// This is more efficient when you want to add multiple items at once
// It creates a new array with the new items and then appends it to the existing array

// Append will add the Contents to the end of the Array
fruitsArray.append(contentsOf: ["Banana", "Mango"])

print(fruitsArray)

// Count    = 1, 2, 3, 4
// Indexes  = 0, 1, 2, 3
fruitsArray[2]

// if we try to access and Index that doesnt exist, the App will crash!
// To prevent this we can do the following

if fruitsArray.indices.contains(4) {
    let item = fruitsArray[4]
}

let firstIndex = furitsArray.indices.first
let lastIndex = furitsArray.indices.last


// using this we can insert Content into an index count instead of having to add it at the end
// Adds only 1 Content
fruitsArray.insert("Watermelon", at: 2)

// Adds multiple Contents
fruitsArray.insert(contentsOf: ["Watermelon", "Tangerine"], at: 2)


// This will also crash the App if a index that doesnt exist is parsed in
fruitsArray.remove(at: 3)

fruitsArray.removeAll()
print(fruitsArray)


struct ProductModel {
    let title: String
    let price: Int
}

var myProducts: [ProductModel] = [
    ProductModel(title: "Product 1", price: 50),
    ProductModel(title: "Product 2", price: 25),
    ProductModel(title: "Product 3", price: 10),
    ProductModel(title: "Product 4", price: 125),
    ProductModel(title: "Product 5", price: 99),
    ProductModel(title: "Product 6", price: 75),
    ]


// Arrays can have duplicates (example: 2x "Apple")
var finalFruits: [String] = ["Apple", "Orange", "Banana", "Apple"]
print(finalFruits)


// SETS


// Sets are unique Values, meaning we cant have 2 of the same item in a Set
// While Arrays have indexes, Sets dont have anything to give them a order
var fruitsSet: Set<String> = ["Apple", "Orange", "Banana", "Apple"]
print(fruitsSet)
