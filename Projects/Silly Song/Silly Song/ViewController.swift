//
//  ViewController.swift
//  Silly Song
//
//  Created by Sajjad Patel on 2017-10-12.
//  Copyright © 2017 Sajjad Patel. All rights reserved.
//

import UIKit

func shortNameFromName(name: String) -> String {
    let lowercase = name.lowercased()
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
    // Replace lyrics with name and short name
    let lyrics = lyricsTemplate.replacingOccurrences(of: "<FULL_NAME>", with: FullName)
        .replacingOccurrences(of: "<SHORT_NAME>", with: shortNameFromName(name: FullName))
    
    return lyrics
}

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Get Delegate and assign to nameField
        nameField.delegate = self
    }

    @IBOutlet weak var lyricsView: UITextView!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func reset(_ sender: Any) {
        //Clear nameField and lyricsView
        nameField.text = ""
        lyricsView.text = ""
    }
    
    @IBAction func displayLyrics(_ sender: Any) {
        // Unwrap String?
        let shortName = nameField.text!
        // Get Lyrics and assign to lyricsView
        lyricsView.text = lyricsForName(lyricsTemplate: bananaFanaTemplate, FullName: shortName)
    }
    
}

//Create Delegate to handle the return button
extension ViewController : UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return false
    }
}
// join an array of strings into a single template string:
let bananaFanaTemplate = [
    "<FULL_NAME>, <FULL_NAME>, Bo B<SHORT_NAME>",
    "Banana Fana Fo F<SHORT_NAME>",
    "Me My Mo M<SHORT_NAME>",
    "<FULL_NAME>"].joined(separator: "\n")
