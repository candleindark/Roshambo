//
//  ChoiceViewController.swift
//  Roshambo
//
//  Created by Isaac To on 3/12/16.
//  Copyright © 2016 Isaac To. All rights reserved.
//

import UIKit

class ChoiceViewController: UIViewController {
    
    // Randomly generate a roshambo choice
    func randomRoshamboChoice() -> RoshamboChoice {
        return RoshamboChoice(rawValue: Int(arc4random() % 3))!
    }

    
    @IBAction func rock() {
        
        let resultViewController: ResultViewController = self.storyboard?.instantiateViewControllerWithIdentifier("ResultViewController") as! ResultViewController
        
        // Set the model of the ResultViewController
        resultViewController.userChoice = .Rock
        resultViewController.computerChoice = randomRoshamboChoice()
        
        presentViewController(resultViewController, animated: true, completion: nil)
    }
}
