//: Playground - noun: a place where people can play

import UIKit


func reverseString(var characters: [Character]) -> [Character]{
    
    func swapFunction(inout stringArray: [Character], currentchar: Int) {
        let swapIndex = stringArray.count - currentchar - 1
        swap(&stringArray[currentchar], &stringArray[swapIndex])
    }
    
    
    for charachter in 0..<characters.count / 2 {
        swapFunction(&characters, currentchar: charachter)
    }
    return characters
}


func sliceString(var characters: [Character]) -> [Character]{
    
    func sliceFunction(inout stringArray: [Character], currentchar: Int, wordlength: Int, startindex: Int) {
        let swapIndex = (wordlength - currentchar - 1) + startindex
        swap(&stringArray[currentchar], &stringArray[swapIndex])
    }
    
    
    var previousSpace = -1
    for var space = 0; space < characters.count; space++ {
        
        if characters[space] == " " || characters[space] == "\r\n" {
            let middle = (space + previousSpace + 1)/2
            let wordStartIndex = previousSpace + 1
            
            for var charachter = previousSpace + 1; charachter < middle; ++charachter {
                sliceFunction(&characters, currentchar: charachter, wordlength: space, startindex: wordStartIndex)
            }
            previousSpace = space
        }
        
        if space >= characters.count - 1  {
            space = characters.count
            
            let middle = (space + previousSpace + 1)/2
            let wordStartIndex = previousSpace + 1
            
            for var charachter = previousSpace + 1; charachter < middle; ++charachter {
                sliceFunction(&characters, currentchar: charachter, wordlength: space, startindex: wordStartIndex)
            }
            
        }
        
        
    }
    return characters
    
}

let wordstr = "find you will pain only go you recordings security the into if"
var characters = Array(wordstr.characters)

let reversedString = reverseString(characters)
let reverseSliceString = sliceString(reversedString)




