//
//  ViewController2.swift
//  emojionclass2
//
//  Created by Dhruv Mishra on 07/02/17.
//  Copyright © 2017 dhruvinity. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    

    @IBOutlet weak var birthyearLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var emojilabel: UILabel!
    @IBOutlet weak var definelabel: UILabel!
    var emoji = Emoji()
    override func viewDidLoad(){
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojilabel.text = emoji.Actualemoji
        definelabel.text = emoji.defination
        categoryLabel.text = "Category:\(emoji.category)"
        birthyearLabel.text = "Birthyear:\(emoji.Birthyear)"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
