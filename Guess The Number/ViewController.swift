//
//  ViewController.swift
//  Guess The Number
//
//  Created by Satya Venkata Krishna Achanta on 10/17/16.
//  Copyright © 2016 Satya Venkata Krishna Achanta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    private var randomNumber = 0;
    private var userNumber = 0;
    private var countGuesses = 0;
    private var guessAgain = true;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomNumber = Int(arc4random_uniform(100));

        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var guessNumber: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func submitButtonPressed(_ sender: AnyObject) {
        
        
        
        if guessAgain {
            guessNumber.text = "";
            countGuesses = 0;
            guessAgain = false;
            
        }
        if Int(guessNumber.text!) != nil{
            let num = Int(guessNumber.text!);
            countGuesses += 1;
            
            if num == randomNumber {
                
                resultLabel.text = "Your Guess is Correct with \(countGuesses) Guesses";
                guessAgain = true;
            }
            else if num! < randomNumber {
                
                resultLabel.text = "Your Guess is lessthan the number";
            }
            
            else if num! > randomNumber {
                
                resultLabel.text = "Your Guess is greaterthan the number";
            }
//             randomNumber = Int(arc4random_uniform(100));
            guessNumber.text = "";

        }
        else
        {
            resultLabel.text = "Please enter valid number";
//            guessNumber.text = "";
        }
        
        
        
        
        
    }

    

}

