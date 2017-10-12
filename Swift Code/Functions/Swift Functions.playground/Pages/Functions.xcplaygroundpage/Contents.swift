//: Playground - noun: a place where people can play

import UIKit
import Foundation

//This function gets the first letter in a String and returns it
//Local Parameter version
func firstLetterInStringLocalParam(word : String) -> Character{
    let letter : Character = word[word.startIndex]
    return letter
}

print(firstLetterInStringLocalParam(word: "Hello"))

//External Parameter Version
func firstLetterInStringExtParam(of word : String) -> Character{
    let letter : Character = word[word.startIndex]
    return letter
}

print(firstLetterInStringExtParam(of: "Hello"))


// If you use an _ before the local parameter you do not need to specify
// the parameter name when you call the function

// Example

func placeFirstLetterLast(_ firstLetLast : String) -> String{
    var firstLetLast = firstLetLast
    firstLetLast.append(firstLetLast[firstLetLast.startIndex])
    firstLetLast.remove(at: firstLetLast.startIndex)
    return firstLetLast
}

print(placeFirstLetterLast("Hello"))


class MovieArchive {
    func filterByYear(year : Int, movies : Dictionary<String, Int>) -> [String] {
        var filteredArray = [String]()
        for(movie, releaseDay) in movies{
            if releaseDay == year{
               filteredArray.append(movie)
            }
        }
        return filteredArray
    }
}

var aiThemedMovies = ["Metropolis": 1927, "2001: A Space Odyssey": 1968, "Blade Runner": 1982, "War Games": 1983, "Terminator": 1984, "The Matrix": 1999, "A.I.": 2001, "Her": 2013, "Ex Machina": 2015]

var archive = MovieArchive()

print(archive.filterByYear(year: 1999, movies: aiThemedMovies))
