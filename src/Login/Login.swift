import Foundation

// Array of banned words (all lowercased)
private let bannedWords = [
    "pussy", "pussyman", "nigger", "nogger", "nicker", "nickher", "nikka", "nigka", "nikga", "nikker", "niccer", "nocker", "bikebiggernikenigger", // Custom
    "ass", "bitch", "fuck", "shit", "cunt", "dick", "piss", "slut", "whore",     // English
    "cabrón", "hijo_de_puta", "puta", "coño", "mierda", "gilipollas", "pendejo",     // Spanish
    "connard", "pute", "merde", "salopard", "enfoiré", "bordel", "clito",     // French
    "arschloch", "fotze", "scheiße", "hurensohn", "wichser", "scheiss", "blowjob",     // German
    "cazzo", "stronzo", "puttana", "merda", "vaffanculo", "sborra", "porco",     // Italian
    "bosta", "merda", "porra", "puta", "caralho", "filho_da_puta", "vaca",     // Portuguese
    "блядь", "сука", "ебать", "хуй", "мразь", "пидор", "гандон",     // Russian
    "操", "婊子", "狗屎", "贱人", "傻逼", "屁", "轮奸",     // Chinese (Simplified)
    "クソ", "バカ", "死ね", "セックス", "ゴミ", "アホ", "レイプ",     // Japanese
    "병신", "미친놈", "섹스", "개새끼", "좆", "좆같은", "걸레",     // Korean
    "ابن_الكلب", "عاهرة", "تافه", "زنا", "كلب", "مخنث", "قذر",     // Arabic
    "बेवकूफ", "मादरचोद", "गधा", "हरामी", "चूत", "भोसड़ी", "कुत्ता",     // Hindi
    "orospu", "piç", "siktir", "amcık", "kahpe", "çocuk_sikici", "bok",     // Turkish
    "kurwa", "pierdol", "chuj", "ciota", "zjeb", "szmata", "jebany",     // Polish
    "kut", "kanker", "homo", "neuken", "slet", "lul", "klootzak",     // Dutch
    "hora", "fitta", "skit", "bög", "knulla", "jävla", "balle",     // Swedish
    "lort", "fisse", "hure", "skidtfuck", "møgdyr", "pik", "bøsse",     // Danish
    "saatana", "huora", "paska", "vittu", "perse", "idiootti", "pillu"     // Finnish
]

// Array of banned passwords (all lowercased)
private let bannedPasswords = [
    "password", "123456", "123456789", "qwerty", "abc123", "password1", "12345678", "12345", "1234567",
    "letmein", "welcome", "monkey", "123123", "admin", "iloveyou", "sunshine", "123123123", "qwertyuiop",
    "password123", "1q2w3e4r", "qwerty123", "abc123456", "password1", "123321", "qwerty", "123", "1q2w3e",
    "password", "iloveyou", "admin", "letmein", "welcome", "monkey", "123123", "qwerty", "password1",
    "1234567", "12345678", "123456789", "12345", "123456", "1234567", "qwertyuiop", "abc123", "password123",
    "sunshine", "123123", "qwerty", "admin", "iloveyou", "password", "welcome", "monkey", "12345678", "soundsaver"
]

struct UserModel {
    private(set) var username: String
    private(set) var firstName: String
    private(set) var lastName: String
    private(set) var fullName: String { "\(firstName) \(lastName)" }
    private(set) var email: String
    private(set) var password: String
    private(set) var dateOfJoin: Date = .now

    // Initializer
    init(username: String, firstName: String, lastName: String, email: String, password: String) {
        self.username = username
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.password = password
    }
}

enum RegisterError {
    case incorrectUserName
    case incorrectFirstName
    case incorrectLastName
    case incorrectPassword
}

func initiateRegister(user: UserModel) -> Bool {
    var errors: [RegisterError] = []

    // Converts inputs to lowercase
    let lowercasedUsername = user.username.lowercased()
    let lowercasedFirstName = user.firstName.lowercased()
    let lowercasedLastName = user.lastName.lowercased()
    let lowercasedPassword = user.password.lowercased()

    // Checks user inputs for banned words
    if bannedWords.contains(lowercasedUsername) {
        errors.append(.incorrectUserName)
    }
    if bannedWords.contains(lowercasedFirstName) {
        errors.append(.incorrectFirstName)
    }
    if bannedWords.contains(lowercasedLastName) {
        errors.append(.incorrectLastName)
    }
    if bannedPasswords.contains(lowercasedPassword) {
        errors.append(.incorrectPassword)
    }

    // Return result
    if errors.isEmpty {
        successfulRegister()
        return true
    } else {
        unsuccessfulRegister(errors: errors)
        return false
    }
}

func unsuccessfulRegister(errors: [RegisterError]) {
    print("Unsuccessful register attempt.")
    print("Error caused by:")

    for error in errors {
        switch error {
        case .incorrectUserName:
            print("Your username contains a banned word! Please choose another one and try again.")
        case .incorrectFirstName:
            print("Your first name contains a banned word! Please use your real name and try again.")
        case .incorrectLastName:
            print("Your last name contains a banned word! Please use your real last name and try again.")
        case .incorrectPassword:
            print("Your password is too common or contains banned words! Please use a stronger password and try again.")
        }
    }
}

func successfulRegister() {
    print("Register was successful.")
}

// Random testing Values
let testUsername = "testUser"
let testFirstName = "First Name"
let testLastName = "Doe"
let testEmail = "john.doe@example.com"
let testPassword = "SecurePass123"

// Creates a UserModel instance with the test values
let userModelInstance = UserModel(username: testUsername, firstName: testFirstName, lastName: testLastName, email: testEmail, password: testPassword)

// Calls initializer and prints the results
let registerSuccessful = initiateRegister(user: userModelInstance)
print("Register successful: \(registerSuccessful)")
