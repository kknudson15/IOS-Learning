//
//  main.swift
//  ClosuresDemo
//
//  Created by Kyle Knudson on 7/13/20.
//  Copyright © 2020 Kyle Knudson. All rights reserved.
//

func calulator (n1: Int, n2: Int, operation: (Int, Int) -> Int ) -> Int {
    return operation(n1, n2)
}

func add(no1: Int, no2: Int) -> Int {
    return no1 + no2
}

//both are options
let added = calulator(n1: 2, n2: 3, operation: add)
//This ues a closure THis is a trailing closure at the end. rule for the swift!
//However, not as readable when has been cut down to this form
let multiplied = calulator(n1: 2, n2: 3) {$0 * $1}
print(multiplied)


let array = [6,2,3,9,4,1]

func addOne(n1: Int) -> Int {
    return n1 + 1
}

//transforms the array
print(array.map(addOne))

//can do this same thing with closure and shorthand syntax
//three high level function that this is useful map, reduce and filter
print(array.map{$0 + 1})

//Changes all elements to strings
let newArray = array.map{"\($0)"}
