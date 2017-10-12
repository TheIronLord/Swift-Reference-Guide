//: Playground - noun: a place where people can play

import UIKit

func shortNameFromName(name: String) -> String {
    let lowercase = name.lowercased()
    //let vowel = CharacterSet(charactersIn: "aeiou")
    var result: String = ""
    
    var addRest: Bool = false;
    for shortName in lowercase{
        if addRest{
            result.append(shortName)
        }
        else if shortName == "a" || shortName == "e" || shortName == "i" || shortName == "o" || shortName == "u" || shortName == "ö"{
            addRest = true;
            result.append(shortName)
        }
    }
    return result
}

func lyricsForName(lyricsTemplate: String, FullName: String) -> String{
    let lyrics = lyricsTemplate.replacingOccurrences(of: "<FULL_NAME>", with: FullName)
                .replacingOccurrences(of: "<SHORT_NAME>", with: shortNameFromName(name: FullName))
    
    return lyrics
}


// join an array of strings into a single template string:
let bananaFanaTemplate = [
    "<FULL_NAME>, <FULL_NAME>, Bo B<SHORT_NAME>",
    "Banana Fana Fo F<SHORT_NAME>",
    "Me My Mo M<SHORT_NAME>",
    "<FULL_NAME>"].joined(separator: "\n")

print(lyricsForName(lyricsTemplate: bananaFanaTemplate, FullName: "Nate"))
