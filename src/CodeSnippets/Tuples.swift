import Foundation




var userName: String = "Hello"
var userIsPremium: Bool = false
var userIsNew: Bool = true

func getUsername() -> String {
    // when returning only one value you can do "return userName" or just write "userName" and it will return the value correctly
    return userName
}
func getUserIsPremium() -> Bool {
    return userIsPremium
}


// limited to one return type
func getUserInfo() -> String {
    let name = getUsername()
    let isPremium = getUserIsPremium()

    return name
}

// multiple return types
// A Tuple in swift
// A tuple can combine mutliple pieces of data
func getUserInfo2() -> (String, Bool) {
    let name = getUsername()
    let isPremium = getUserIsPremium()

    return (name, isPremium)
}

// Normal, 1 Data type Variable
var userData1: String = userName

// "Tuple", Variable that has multiple Data types
var userData2: (String, Bool, Bool) = (userName, userIsPremium, userIsNew)




// (Has type of String and Bool)
let info1 = getUserInfo2()
// 0,1,2,3.. etc ("Arrays") allows you to access single Data types within a Tuple function / Variable
let name1 = info1.0
let premium1 = info1.1





func getUserInfo3() -> (name: String, isPremium: Bool) {
    let name = getUsername()
    let isPremium = getUserIsPremium()

    return (name, isPremium)
}

let info2 = getUserInfo3()

// assigned names to the types in the "()" allow us to replace Numerical Arrays
let name2 = info2.name
let premium2 = info2.isPremium





func getUserInfo4() -> (name: String, isPremium: Bool, isNew: Bool) {
    return (userName, userIsPremium, userIsNew)
}

func doSomethingWithUserInfo(info: (name: String, isPremium: Bool, isNew: Bool)) {
    // Some Action Here
}

let info = getUserInfo4()
doSomethingWithUserInfo(info: info)
