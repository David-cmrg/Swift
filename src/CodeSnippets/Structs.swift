import Foundation

// Structs are fast!!
// Structs are store in the Stack (memory)
// Objects in the Stack are Value Types
// Value types are copied and "mutated"

// When editing a struct copy and mutate it

struct Quiz{
    let title: String
    let dateCreated: Date
    let isPremium: Bool?

    // Structs have an implicit init
}

let myObject: String = "Hello, world!"

let myQuit: Quiz = Quiz(title: "Quiz 1", dateCreated: .now) // ".now" stands for the moment this event happened

print(myQuit.title) // prints "Quiz 1"

// ------------------------------------------------------------------------


// "Immutable Struct" = all "let" constants = NOT mutable = "Cannot mutate it"
// Because its constants (let) the data CANT CHANGE, its ALWAYS going to have those values
struct UserModel {
    let name: String
    let isPremium: Bool
}

var user1: UserModel(name: "Nick", isPremium: false)


// This is a very manual type and usually not used in Code
func markUserAsPremium() {
    print(user1)

    user1 = userModel(name: user1.name, isPremium: true)
    print(user1)

}

markUserAsPremium()

// ------------------------------------------------------------------------

// "Mutable Struct"
struct UserModel2{
    let name: String
    var isPremium: Bool
}

var user2 = UserModel2(name: "Nick", isPremium: false)

func markUserAsPremium2() {
    print(user2)
    // "mutate" the struct
    user2.isPremium = true
    print(user2)

}

markUserAsPremium2()

// ------------------------------------------------------------------------

// "immutable Struct"
// Works the same way as Struct "UserModel1", with the difference that the func is in the Struct itself
// This is a better code in practice because the Struct is in charge of changing its own Data
struct UserModel3 {
    let name: String
    let isPremium: Bool

    // modify the value manually
    func markUserAsPremium3()  -> UserModel3 {
        return UserModel3(name: name, usPremium: true)
    }

    // modify the value by parsing in a Value
    func markUserAsPremium3(newValue: Bool)  -> UserModel3 {  // "-> UserModel3" returns the new struct value, previously known as "UserModel3(name: "Nick", isPremium: false)" but now with the modified argument
        return UserModel3(name: name, usPremium: newValue)
    }
}

var user3: UserModel3 = UserModel3(name: "Nick", isPremium: false)
user3 = user3.markUserAsPremium(newValue: true)


// ------------------------------------------------------------------------

// "Mutable Struct"
struct UserModel4 {
    let name: String
    private(set) var isPremium: Bool
    // "private(set)" means that the value can be read but not modified from outside the struct preventing accidental changes of value


    // Because func is a child of parent struct, we cant copy and mutate the old struct to a new one because the func is running inside the struct, that would cause the project to break
    // so by writing "mutating func" instead of "func" we can get around this
    mutating func updateIsPremium(newValue: Bool) {
        isPremium = newValue
    }
}
