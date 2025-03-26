import Foundation

// Arrays can have duplicates (example: 2x "Apple")
var finalFruits: [String] = ["Apple", "Orange", "Banana", "Apple"]
print(finalFruits)


// SETS
// Sets are unique Values, meaning we cant have 2 of the same item in a Set
// While Arrays have indexes, Sets dont have anything to give them a order
var fruitsSet: Set<String> = ["Apple", "Orange", "Banana", "Apple"]
print(fruitsSet)

// Dictionaries
// Dictionaries are like Arrays, but instead of indexes, we use keys to access the values
// Dictionaries are referenced by using [key : value]
// There cant be a duplicate of the same key, if so the aplication will crash -> Duplicate Values are fine
var myFirstDictionary: [String : Bool] = [
    "Apple" : true, 
    "Orange" : false
]

let item = myFirstDictionary["Banana"]
// This wont crash the App, because dictionaries are set to optional values (example: Bool?)
// Arrays would crashg the app, if an requested index has no value / doesnt exist

var anotherDictionary: [Int : String] = [
    0 : "Apple", 
    176 : "Banana"
]

let item2 = anotherDictionary[176] // Output -> "Banana"
let item2 = anotherDictionary[69] // Output -> nil


// To add a value to a Dictionary you just have to give it a key and a value
anotherDictionary[15] = "Mango"
print(anotherDictionary)

// To remove a value from a Dictionary you just have to give it the key of the value
anotherDictionary.removeValue(forKey: 15)
print(anotherDictionary)





// Not sure if true, auto complete typer wrote this: 
// To check if a key exists in a Dictionary, you can use the contains method
print(anotherDictionary.contains(where: { $0.key == 15 })) // Output -> false
print(anotherDictionary.contains(where: { $0.key == 176 })) // Output -> true







struct PostModel {
    let id: String
    let title: String
    let likeCount: Int
}

var postArray: [PostModel] = [
    PostModel(id: "abc123", title: "Post 1", likeCount: 5),
    PostModel(id: "def678", title: "Post 2", likeCount: 7),
    PostModel(id: "xyz987", title: "Post 3", likeCount: 217),
]

if postArray.indices.contains(1) {
    let item = postArray[1]
    print(item)
}

var postDict: [String:PostModel] = [
    "abc123" : PostModel(id: "abc123", title: "Post 1", likeCount: 5),
    "def678" : PostModel(id: "def678", title: "Post 2", likeCount: 7),
    "xyz987" : PostModel(id: "xyz987", title: "Post 3", likeCount: 217),
]

let myNewItem = postDict["def678"]
print(myNewItem)
