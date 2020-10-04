import UIKit

/*
 Please implement a closure which
 input type is Int, output type is Bool.
 functionality to verify if the input is odd or not, If it’s odd, please return true, otherwise return false.
 */


func test (number:Int,closure:(Int)->Bool){
    //for item in number{
       // if closure(item){
            print(closure(number))
    
}

let a = 23
let isOdd = { $0 % 2 == 1}
let isEven = {$0 % 2 == 0}
print("Is this number:\(a) odd or even?")

print("Odd:",terminator:"")
test(number:a,closure: isOdd)

print("Even:",terminator:"")
test(number: a, closure: isEven)


