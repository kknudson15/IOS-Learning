
let myOptional : String?

myOptional = "Angela"


//Option 1 Force unwrapping optional!
//If muOptional = nil the program will crash here
let text: String = myOptional!

//Option 2
if myOptional != nil {
    let text2 : String = myOptional!
} else {
    print("my Optional was found to be nil")
}

//Option 3
if let safeOptional = myOptional {
    let text3 : String = safeOptional
}

//Option 4
let text4 : String = myOptional ?? "Empty"


//Option 5
struct MyOptional {
    var property = 123
    func method() {
        print("I am the struct's method")
    }
}

let myOptional4: MyOptional?

myOptional4 = MyOptional()

myOptional4?.method()
