//
//  main.swift
//  GAME3004_Assignment1
//
//  Created by Christopher Aytona on 2017-01-16.
//  Copyright © 2017 Christopher Aytona. All rights reserved.
//

import Foundation

var gameDictionary =
    ["melton": "a heavily fulled cloth, often of wool, tightly constructed and finished with a smooth face concealing the weave, used for overcoats, hunting jackets, etc.",
     "reconstruct": "to re-create in the mind from given or available information.",
     "aware": "having knowledge; conscious; cognizant.",
     "merriment": "cheerful or joyful gaiety; mirth; hilarity; laughter.",
     "levirate": "the custom of marriage by a man with his brother's widow, such marriage required in Biblical law if the deceased was childless.",
     "rootlike": "a part of the body of a plant that develops, typically, from the radicle and grows downward into the soil, anchoring the plant and absorbing nutriment and moisture.",
     "glare": "a very harsh, bright, dazzling light.",
     "conservatism": "the disposition to preserve or restore what is established and traditional and to limit change.",
     "membrane": "Anatomy. a thin, pliable sheet or layer of animal or vegetable tissue, serving to line an organ, connect parts, etc.",
     "assertive": "confidently aggressive or self-assured; positive: aggressive; dogmatic.",
     "gabble": "to speak or converse rapidly and unintelligibly; jabber.",
     "talkathon": "an unusually long speech or discussion, especially on a matter of public interest, as a Congressional filibuster or a televised question-and-answer session with a political candidate.",
     "knowledge": "acquaintance with facts, truths, or principles, as from study or investigation; general erudition.",
     "familiarity": "thorough knowledge or mastery of a thing, subject, etc.",
     "purposed": "the reason for which something exists or is done, made, used, etc.",
     "conscious": "aware of one's own existence, sensations, thoughts, surroundings, etc.",
     "temporised": "to be indecisive or evasive to gain time or delay acting.",
     "mastery": "command or grasp, as of a subject.",
     "signal": "anything that serves to indicate, warn, direct, command, or the like, as a light, a gesture, an act, etc.",
     "roke": "a seam or scratch filled with scale or slag on the surface of an ingot or bar.",
     "baptism": "Ecclesiastical. a ceremonial immersion in water, or application of water, as an initiatory rite or sacrament of the Christian church.",
     "chipolata": "a small sausage in a narrow casing",
     "hunan": "Pinyin, Wade-Giles. a province in S China. 81,274 sq. mi. (210,500 sq. km).",
     "moderator": "a person who presides over a panel discussion on radio or television.",
     "rada": "Royal Academy of Dramatic Art.",
     "rejoice": "to be glad; take delight.",
     "signboard": "a board bearing a sign.",
     "phuket": "an island near the W coast of Thailand. 294 sq. mi.",
     "forfeit": "a fine; penalty.",
     "precept": "a commandment or direction given as a rule of action or conduct.",
     "command": "to direct with specific authority or prerogative; order.",
     "wheeled": "equipped with or having wheels.",
     "chronoscope": "an electronic instrument for measuring accurately very brief intervals of time, as in determining the velocity of projectiles.",
     "subpoena": "the usual writ for the summoning of witnesses or the submission of evidence, as records or documents, before a court or other deliberative body.",
     "medico": "a physician or surgeon; doctor.",
     "coin": "a piece of metal stamped and issued by the authority of a government for use as money.",
     "authority": "the power to determine, adjudicate, or otherwise settle issues or disputes; jurisdiction; the right to control, command, or determine.",
     "grisliness": "causing a shudder or feeling of horror; horrible; gruesome.",
     "acid": "a substance with a sour taste.",
     "drama": "a composition in prose or verse presenting in dialogue or pantomime a story involving conflict or contrast of character, especially one intended to be acted on the stage; a play.",
     "pronounce": "to enunciate or articulate (sounds, words, sentences, etc.).",
     "pathology": "the science or the study of the origin, nature, and course of diseases.",
     "cobelligerent": "a state or individual that cooperates with, but is not bound by a formal alliance to another in waging war.",
     "member": "a person, animal, plant, group, etc., that is part of a society, party, community, taxon, or other body.",
     "heroism": "the qualities or attributes of a hero or heroine.",
     "taxable": "capable of being taxed; subject to tax.",
     "viminal": "one of the seven hills on which ancient Rome was built.",
     "beloved": "greatly loved; dear to the heart.",
     "bunch": "a connected group; cluster.",
     "googolplex": "a number that is equal to 1 followed by a googol of zeros.",
     "appreciate": "to be grateful or thankful for."]
var score = 0;
var highScore = 0;
var wordBank = ["melton", "reconstruct", "aware", "merriment", "levirate", "rootlike", "glare", "conservatism", "membrane", "assertive", "gabble", "talkathon", "knowledge", "familiarity", "purposed", "conscious", "temporised", "mastery", "signal", "roke", "baptism", "chipolata", "hunan", "moderator", "rada", "rejoice", "signboard", "phuket", "forfeit", "precept", "command", "wheeled", "chronoscope", "subpoena", "medico", "coin", "authority", "grisliness", "acid", "drama", "pronounce", "pathology", "cobelligerent", "member", "heroism", "taxable", "viminal", "beloved", "bunch", "googolplex", "appreciate"]

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
while input == "y" {
    var randIndex = Int(arc4random_uniform(UInt32(wordBank.count)))
    var word = wordBank[randIndex]
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
        print("Correct!\n You have earned +5 points")
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
    print("Highscore: " + String(highScore))
}

print("\nThanks for playing!")
