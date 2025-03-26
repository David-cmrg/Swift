import Foundation

// Structs and Enums are Value Types
// Classes are Refference types
// They work fundamentally different behind the scenes

// Most of the time you should prefer a Struct over a Class, but there are absolutely cases where we need to use a Class
// When we create a Class we call it an "instance" and that instance of the class is pointing to the object in the memory
// We dont mutate it like we did with the Struct, but rather we just update the Object in memory




// Classes are slower!
// Classes are stored in the Heap (memory)
// Objects in the Heap are Reference Types
// Reference types point to an Object in memory and update the Object in memory

// We dont create a new Object, we point to the same one in memory and then we change it as it is
// And because we are changing the same Object we dont have to deal with all of that weird mutations that we were doing on the Structs


// All the data needed for some Screen
class ScreenViewModel {
    let title: String
    private(set) var showButton: Bool

    // Same init as a Struct, except that Structs have implicit init (no init needed)
    init(title: String, showButton: Bool) {
        self.title = title
        self.showButton = showButton
    }


    deinit{
        // This runs as the Object is being removed from memory
        // Structs do NOT have deinit!  
    }

    func hideButton() {
        showButton = false
    }
    func updateShowButton(newValue: Bool) {
        showButton = newValue
    }
}

// "screenViewModel" is stored in memory and "viewModel" is the pointer pointing at the Object in memory
// Notice that we are using a "let", because:
// The object itself is not changing
// The data inside the object is changing!
// The data inside the viewModel is changing, even tho it being a constance (let)
let viewModel: ScreenViewModel = screenViewModel(title: "Screen 1", showbutton: true)
// viewModel.showButton = false
let value = viewModel.showButton

viewModel.hideButton()
viewModel.updateShowButton(newValue: false)


