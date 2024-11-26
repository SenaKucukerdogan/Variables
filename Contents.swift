import Foundation

// let immutable, not assign to again
// var mutable, assign to again

let myName = "Vandad"
let yourName = "Foo"

var names = [ // structure
    myName,
    yourName
]

names.append("Bar")
names.append("Baz")


let foo = "Foo"
var foo2 = foo
foo2 = "Foo 2"
foo
foo2  // value types


/* *********************************************************  */

// NSMutableArray class'ı ile 'let' immutable(değişmez) veri tipini mutable(değiştirilebilir) olarak değiştirebiliriz.

// NSMutableArray reference type

let oldArray = NSMutableArray( // class
    array: [
        "Foo",
        "Bar"
    ]
)
print("oldArray: \(oldArray)")

oldArray.add("Baz")
print("oldArray: \(oldArray)")

var newArray = oldArray
print("newArray: \(newArray)")

newArray.add("Saz")

oldArray
newArray
print("oldArray: \(oldArray)")
print("newArray: \(newArray)")

/* *********************************************************** */

let someNames = NSMutableArray(
    array: [
        "Foo",
        "Bar"
    ]
)

func changeTheArray(_ array: NSArray, newName: String) {
    let newArray = array as! NSMutableArray
    newArray.add(newName)
}

changeTheArray(someNames, newName: "Saz")
someNames

print("someNames: \(someNames)")


