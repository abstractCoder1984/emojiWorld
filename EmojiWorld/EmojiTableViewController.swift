//
//  EmojiTableViewController.swift
//  EmojiWorld
//
//  Created by Abhishek Kambli on 17/03/18.
//  Copyright © 2018 Abhishek Kambli. All rights reserved.
//

import UIKit

class EmojiCell: UITableViewCell {
    @IBOutlet weak var emojiLabel: UILabel!
    
}

class EmojiTableViewController: UITableViewController {
    
    var emojis: [String] = ["😍", "😊", "☺️", "😘", "🤩", "😉"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView(frame: .zero)
        tableView.rowHeight = 100.0
        tableView.separatorColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.15)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return emojis.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! EmojiCell
        
        cell.emojiLabel.text = emojis[indexPath.row]
        
        return cell
    }

}
