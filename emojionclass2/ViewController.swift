//
//  ViewController.swift
//  emojionclass2
//
//  Created by Dhruv Mishra on 07/02/17.
//  Copyright © 2017 dhruvinity. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableview1: UITableView!
    var emojis : [Emoji] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableview1.dataSource = self
        tableview1.delegate = self
        emojis = MakeEmojiarray()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.Actualemoji
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "segue1", sender: emoji)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defvc = segue.destination as! ViewController2
        defvc.emoji = sender as! Emoji
        
    }
        
    func MakeEmojiarray() -> [Emoji]{
        let emoji1 = Emoji()
        emoji1.Actualemoji = "😨"
        emoji1.defination = "scared face! what have u done"
        emoji1.category = "Smiley"
        emoji1.Birthyear = 2010
        
        let emoji2 = Emoji()
        emoji2.Actualemoji = "🤗"
        emoji2.defination = "I want to hug you"
        emoji2.category = "smiley"
        emoji2.Birthyear = 2008
        
        let emoji3 = Emoji()
        emoji3.Actualemoji = "👠"
        emoji3.defination = "A beautiful red heel"
        emoji3.category = "Things"
        emoji3.Birthyear = 2012
        
        let emoji4 = Emoji()
        emoji4.Actualemoji = "🐺"
        emoji4.defination = "Good old wolfie"
        emoji4.category = "Animal"
        emoji4.Birthyear = 2014
        
        let emoji5 = Emoji()
        emoji5.Actualemoji = "🏀"
        emoji5.defination = "Thats a basketball !!"
        emoji5.category = "Thing"
        emoji5.Birthyear = 2009
        
        return [emoji1,emoji2,emoji3,emoji4,emoji5]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

