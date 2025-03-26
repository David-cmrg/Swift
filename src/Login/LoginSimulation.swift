import Foundation

var username: String = "user"
var password: String = "password"
var email: String = "email"
var errorMessage: String? = nil
var firstUserLogin: Bool = true

func loginCompleted() -> Bool {
    guard !username.isEmpty, !password.isEmpty, !email.isEmpty else {
        errorMessage = "Username, password, and Email must not be empty."
        print(errorMessage ?? "")
        return false
    }

  // Simulate a login process | This is the point where you match the login credentials with a Database
    if username == "user" && password == "password" && email == "email" {
        errorMessage = nil
        return true
    } else {
        errorMessage = "Invalid username, password, or email."
        return false
    }
}

let loginSuccessful = loginCompleted()

if loginSuccessful {
  if firstUserLogin == true{
    // Do a first Welcoming Screen (Show around the app)
    print("This is users first Login!")
    firstUserLogin = false
  }
}
