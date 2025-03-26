import Foundation


// Enums are the same as Structs, except that we know all cases at runtime
// They also work the same way in terms of Memory (Stack)

struct CarModel {
    let brand: CarBrandOption
    let model: String
}

struct CarBrand {
    let title: String
}

// Enums are stored in memory the same way as a Struct but we cannot mutate them!!
enum CarBrandOption {
    case ford
    case toyota
    case honda

    var title: String {
        switch self {
            case .ford:
                return "Ford"
            case. toyota:
                return "Toyota"
            case .honda:
                return "Honda"
//            default:
//                return "Default"
        }
    }
}

// var car1: CarModel = CarModel(brand: "Ford", model: "Fiesta")
// var car2: CarModel = CarModel(brand: "Ford", model: "Focus")
// var car3: CarModel = CarModel(brand: "Toyota", model: "Camry")

// var brand1 = CarBrand(title: "Ford")
// var brand2 = CarBrand(title: "Toyota")

// var car1: CarModel = CarModel(brand: CarBrand(title: "Ford"), model: "Fiesta")
// var car2: CarModel = CarModel(brand: CarBrand(title: "Ford"), model: "Focus")
// var car3: CarModel = CarModel(brand: CarBrand(title: "Toyota"), model: "Camry")


// Enums let you only select one of the entered "case´s" by using a "." followed by a case
// Strings are no longer allowed
var car1 = CarModel(Brand: .ford, model: "Fiesta")  
var car1 = CarModel(Brand: .ford, model: "Focus")
var car1 = CarModel(Brand: .toyota, model: "Camry")

var fordBrand: CarBrandOption = .ford
print(fordBrand.title) 
