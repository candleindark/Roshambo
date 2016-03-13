//
//  ResultViewController.swift
//  Roshambo
//
//  Created by Isaac To on 3/12/16.
//  Copyright © 2016 Isaac To. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var userChoice: RoshamboChoice?
    var computerChoice: RoshamboChoice?
    
    @IBOutlet weak var resultImageView: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
}
