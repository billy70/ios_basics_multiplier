//
//  ViewController.swift
//  multiples
//
//  Created by William L. Marr III on 3/2/16.
//  Copyright © 2016 William L. Marr III. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    
    let MAX_TAPS = 10
    let MAX_VALUE = 100
    
    var currentTaps = 0
    var totalValue = 0
    var currentValue = 0
    
    
    // MARK: - Outlets
    
    @IBOutlet weak var instructionsLabel: UILabel!
    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    
    
    // MARK: Actions
    
    @IBAction func playButtonTapped(sender: UIButton!) {
        
        // Don't continue if the input is empty or invalid (i.e., not an integer).
        if inputField.text?.isEmpty == false {
            
            let number = Int(inputField.text!)
            
            if number != nil {
                currentValue = number!
                inputField.hidden = true
                playButton.hidden = true
                addButton.hidden = false
                instructionsLabel.text = "Press ADD to add!"
            }
        }
    }

    
    // MARK: Methods
    
    func resetGame() {
        
        currentTaps = 0
        totalValue = 0
        currentValue = 0
        
        instructionsLabel.text = "Enter a multiple:"
        inputField.hidden = false
        playButton.hidden = false
        addButton.hidden = true
    }
    
    
    // MARK: Overrides

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // On initial load, the "ADD" button should be hidden since it will
        // only be visible when adding up the multiples that the user entered.
        addButton.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

