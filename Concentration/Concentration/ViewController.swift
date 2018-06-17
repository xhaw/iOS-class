//
//  ViewController.swift
//  Concentration
//
//  Created by Xiaohan Wang on 6/14/18.
//  Copyright © 2018 Xiaohan Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    //treat literals without . as int
    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flips:\(flipCount)"
        }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel! // ! is important, not initialized
    
    @IBOutlet var cardButtons: Array<UIButton>!
    
    var emojiChoices = ["🎃", "👻", "🎃", "👻"]
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender) {
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)

        } else {
            print("chosen card was not in cardButtons")
        }
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }

}

