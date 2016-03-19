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
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        func setDestinationViewController(userChoice: RoshamboChoice) {
            let resultViewController = segue.destinationViewController as! ResultViewController
            
            // Set the model of the ResultViewController
            resultViewController.userChoice = userChoice
            resultViewController.computerChoice = randomRoshamboChoice()
        }
        
        if segue.identifier == "performPaper" {
            setDestinationViewController(.Paper)
        } else if segue.identifier == "performScissors" {
            setDestinationViewController(.Scissors)
        }
    }

    
    @IBAction func rock() {
        
        let resultViewController: ResultViewController = self.storyboard?.instantiateViewControllerWithIdentifier("ResultViewController") as! ResultViewController
        
        // Set the model of the ResultViewController
        resultViewController.userChoice = .Rock
        resultViewController.computerChoice = randomRoshamboChoice()
        
        presentViewController(resultViewController, animated: true, completion: nil)
    }
    
    @IBAction func paper(sender: UIButton) {
        performSegueWithIdentifier("performPaper", sender: self)
    }
}
