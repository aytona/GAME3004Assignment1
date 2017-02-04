//
//  main.swift
//  GAME3004_Assignment1
//
//  Created by Christopher Aytona on 2017-01-16.
//  Copyright © 2017 Christopher Aytona. All rights reserved.
//

import Foundation

var gameDictionary =
    ["analysis": "abstract separation of a whole into its constituent parts",
     "approach": "move towards",
     "area": "the extent of a 2-dmensional surface within a boundry",
     "assessment": "the act of judging a person or situation or event",
     "assume": "take to be the case or to be true",
     "authority": "the power or right to give orders or make decisions",
     "available": "obtainable or accessible and ready for use or service",
     "benefit": "something that aids or promotes well-being",
     "concept": "an abstract or general idea inferred from specific instances",
     "constitutional": "exsiting as an essential characteristic",
     "context": "the set of facts or circumstances that surround a situation",
     "contract": "a binding agreement that is enforceable by law",
     "create": "bring into existence",
     "data": "a collection of facts from which conclusions may be drawn",
     "definition": "a concise explanation of the meaning of a word or phrase",
     "derived": "formed or developed from something else; not original",
     "economic": "of or relating to production and management of wealth",
     "environment": "the totality of surrounding conditions",
     "established": "brought about or set up or accepted",
     "estimate": "judge tentatively",
     "evidence": "knowledge on which to base belief",
     "export": "sell or transfer abroad",
     "factor": "anything that contributes causally to a result",
     "financial": "involving fiscal matters",
     "formula": "a group of symbols that make a mathematical statement",
     "function": "what something is used for",
     "identified": "having the identity known or established",
     "income": "the financial gain accruing over a given period of time",
     "indicate": "designate a place, direction, person, or thing",
     "individual": "being or characteristic of a single thing or person",
     "interpretation": "the act of expressing something in an artistic performance",
     "involved": "connected by participation or association or use",
     "issue": "some situation or event that is thought about",
     "labour": "productive work (especially physical work done for wages)",
     "legal": "established by or founded upon law or official rules",
     "legislation": "the act of making or enacting laws",
     "major": "greater in scope or effect",
     "method": "a way of doing something, especially a systematic way",
     "occur": "come to pass",
     "percent": "a proportion in relation to a whole",
     "period": "an amount of time",
     "policy": "a plan of action adopted by an individual or social group",
     "principle": "a basic generalization that is accepted as true",
     "procedure": "a particular course of action intended to achieve a result",
     "required": "necessary by rule",
     "research": "a seeking for knowledge",
     "response": "the speech act of continuing a conversational exchange",
     "role": "the actions and activities assigned to a person or group",
     "section": "one of several parts or pieces that fit with others",
     "sector": "a particular aspect of life or activity"]
var score = 0;
var highScore = 0;
var wordBank = ["analysis", "approach", "area", "assessment", "assume", "authority", "available", "benefit", "concept", "constitutional", "context", "contract", "create", "data", "definition", "derived", "economic", "environment", "established", "estimate", "evidence", "export", "factor", "financial", "formula", "function", "identified", "income", "indicate", "individual", "interpretation", "involved", "issue", "labour", "legal", "legislation", "major", "method", "occur", "percent", "period", "policy", "principle", "procedure", "required", "research", "response", "role", "section", "sector"]

func ShowDesc(_ word : String) {
    let desc = gameDictionary[word]
    print(desc!)
}

print("Welcome to the Dictionary Game! \nWould you like to play? (y/n)")
var input = readLine()
while input != "y" && input != "n" {
    print("Invalid input! (y/n)")
    input = readLine()
}
while input == "y" && wordBank.count > 0 {
    var randIndex = Int(arc4random_uniform(UInt32(wordBank.count)))
    var word = wordBank[randIndex]
    wordBank.remove(at: randIndex)
    print("What word matches this description?\n")
    ShowDesc(word)
    var answer = readLine()
    var tryAgain = String()
    while answer != word && tryAgain != "n" {
        print("Wrong answer\nWould you like to try again?(y/n)")
        tryAgain = readLine()!
        while tryAgain != "n" && tryAgain != "y" {
            print("Invalid input! (y/n)")
            tryAgain = readLine()!
        }
        if (tryAgain == "n") {
            break;
        }
        print("Would you like to read the description again? (y/n)")
        var desc = readLine()
        while desc != "n" && tryAgain != "y" {
            print("Invalid input! (y/n)")
            desc = readLine()
        }
        if (desc == "y") {
            ShowDesc(word)
        }
        print("Type your answer")
        answer = readLine()
    }
    if (answer == word) {
        print("Correct!\nYou have earned +5 points")
        score += 5
        if (score >= highScore) {
            highScore = score
        }
    }
    print("Would you like to keep playing? (y/n)")
    input = readLine()
    while input != "y" && input != "n" {
        print("Invalid input! (y/n)")
        input = readLine()
    }
    print("\nYour current score is: " + String(score))
}

if (wordBank.count <= 0) {
    print("Congrats! We ran out of words!")
}

print("\nThanks for playing!")
print("Highscore: " + String(highScore))
