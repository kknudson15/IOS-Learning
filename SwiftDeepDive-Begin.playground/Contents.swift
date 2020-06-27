//Swift Language Exploration
//Xcode shortcut - command + / = comments out line automatically

/*This is a mulitple
 line comment*/

//Print Statements
print("Hello World!")

//String interpolation
// adding \() in between string will cause anything between () to be interpreted as code
print("Hello \(2+3) World!")

//VARIABLES
var c = 5

var d = 8

print("The value of a is: \(c)")
print(a)

print("The value of b is: \(d)")
print(b)

// Variables Challenge
/*Without touching any of the existing code, can you write 3 lines of code to switch around the
 values held inside the two variables a and b?*/
var a = 5
var b = 8

var temp = a
a = b
b = temp

print("a: \(a)")
print("b: \(b)")


//Arrays
//Creating an array
var array1 = ["One", "Two", "Three"]

//Accessing Items from an Array
print("The first element of the array is: \(array1[0])")

//Challenge
/*Given the array of numbers. Create another array called computedNumbers. computedNumbers should
 multiply each element in the numbers array by the next element. The last element should be
 multiplied by the first.*/

var numbers = [45, 73, 195, 53]

//Write your code here
var computedNumbers = [numbers[0] * numbers[1], numbers[1] * numbers[2],
                       numbers[2] * numbers[3], numbers[3] * numbers[0]]


print(computedNumbers)


//Constants, Range Operator and basic data types

//Constants
//constants once created, cannot be changed and is signified by the key word let
//This is a constant
let pi = 3.14159
print(pi)


//Challenge: Constants
/*Declare a constant called secondsInAnHour that represents the number of seconds in an hour and
 assign that number to it on the same line. The data type of the constant should be an Integer.*/
let secondsInAnHour = 3600
//Don't change the code below.
print(secondsInAnHour)

//Datatypes
//Strings
"Kyle"
//Ints
var i = 5
//Floats
var f = 3.2
//Double
var dub = 4.567788899
//Bool
var boo = true


//Range Operator
// ... closed range operator
// ..< half closed range operator
//
//Random Int
let randomNumber = Int.random(in: 1...3)
print(randomNumber)

//Randomness
//Float.random(in: 1...3)
//Bool.random()
//array1.randomElement()
//array1.shuffle()


//Randomization Challenge
/*You are going to create a password generator. We have created an array called alphabet which
 contains all 26 letters in the alphabet.Write some code to randomly pick 6 letters out of the
 alphabet to create a random 6 character password.*/

let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

//The number of letters in alphabet equals 26

var password = alphabet[Int.random(in: 0...25)] + alphabet[Int.random(in: 0...25)] + alphabet[Int.random(in: 0...25)] + alphabet[Int.random(in: 0...25)] + alphabet[Int.random(in: 0...25)] + alphabet[Int.random(in: 0...25)]

print(password)



