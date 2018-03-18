//
//  EmojiDetailsViewController.swift
//  EmojiWorld
//
//  Created by Abhishek Kambli on 18/03/18.
//  Copyright © 2018 Abhishek Kambli. All rights reserved.
//

import UIKit

class EmojiDetailsViewController: UIViewController {

    var emojiLabel: String = ""
    
    
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    @IBOutlet weak var openedEmojiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        openedEmojiLabel.text = emojiLabel
        showEmojiDescription(emojiLabel: emojiLabel)
        
    }
    func showEmojiDescription(emojiLabel: String){
        switch emojiLabel {
        case "😉":
            emojiDefinitionLabel.text = "Winking Face"
            
        case "😍":
            emojiDefinitionLabel.text = "Smiling Face With Heart-Eyes"
            
        case "😊":
            emojiDefinitionLabel.text = "Smiling Face With Smiling Eyes"
            
        case "🤩":
            emojiDefinitionLabel.text = "Star-Struck"
            
        case "☺️":
            emojiDefinitionLabel.text = "Smiling Face"
            
        case "😘":
            emojiDefinitionLabel.text = "Face Blowing a Kiss"
            
        default:
            emojiDefinitionLabel.text = "Mystery"
        }
    }

}
