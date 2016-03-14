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
    
    override func viewWillAppear(animated: Bool) {
        
        if nil != userChoice && nil != computerChoice {
            
            let userChoice = self.userChoice!, computerChoice = self.computerChoice
            
            if userChoice == computerChoice {
                // Present result of a tie
                resultImageView.image = UIImage(named: "itsATie")
                resultLabel.text = "It's a tie!"
            } else {
                switch userChoice {
                case .Rock:
                    if .Scissors == computerChoice {
                        // Present user winning
                        resultImageView.image = UIImage(named: "RockCrushesScissors")
                        resultLabel.text = "Rock crushes scissors. You win!"
                    } else {
                        // Present user losing
                        resultImageView.image = UIImage(named: "PaperCoversRock")
                        resultLabel.text = "Paper Covers Rock. You lose!"
                    }
                case .Paper:
                    if .Rock == computerChoice {
                        // Present user winning
                        resultImageView.image = UIImage(named: "PaperCoversRock")
                        resultLabel.text = "Paper Covers Rock. You win!"
                    } else {
                        // Present user losing
                        resultImageView.image = UIImage(named: "ScissorsCutPaper")
                        resultLabel.text = "Scissors cut paper. You lose!"
                    }
                case .Scissors:
                    if .Paper == computerChoice {
                        // Present user winning
                        resultImageView.image = UIImage(named: "ScissorsCutPaper")
                        resultLabel.text = "Scissors cut paper. You win!"
                    } else {
                        // Present user losing
                        resultImageView.image = UIImage(named: "RockCrushesScissors")
                        resultLabel.text = "Rock crushes scissors. You lose!"
                    }
                }
                
            }
            
        } else {
            // Set to display nothing if either the user's choice or the computer's choice is unavailable
            resultImageView.image = nil
            resultLabel.text = nil
        }
    }
}
