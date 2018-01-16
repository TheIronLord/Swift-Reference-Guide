import UIKit

//Computed Initializer
var val = 1
let timed : Bool = {
    if val == 1{
        return true
    }else {
        return false
    }
}()

//Computed Variables
var now : String {
    get{
        return Date().description
    }
    set{
        print(newValue)
    }
}
//print(now)

//Setter Observers
var s = "whatever"{
    willSet{
        print(newValue)
    }
    didSet{
        print(oldValue)
    }
}
