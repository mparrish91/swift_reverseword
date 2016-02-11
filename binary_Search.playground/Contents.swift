//: Playground - noun: a place where people can play

import UIKit


let sortedArray = [1, 10, 20, 47, 59, 63, 75, 88, 99, 107, 120, 133, 155, 162, 176, 188, 199, 200, 210, 222]


func binarySearch(inputarray: [Int], key: Int) -> Int {
    
    return binarySearchRecur(inputarray, key: key, start: 0, stop: inputarray.count)
}


func binarySearchRecur(inputarray: [Int], key: Int, start: Int, stop: Int) -> Int {
    
    if start >= stop {
        return -1
    }
    
    if stop - start == 1{
        if inputarray[start] == key{
            return start
        }else{
            return -1
        }
    }
    
    let middle = (start + stop) / 2
    
    if inputarray[middle] > key {
        return binarySearchRecur(inputarray, key: key, start: start, stop: middle)
    }else{
        return binarySearchRecur(inputarray, key: key, start: middle, stop: stop)
    }
}



binarySearch(sortedArray, key: 222)
