//
//  ViewController.swift
//  fibonacciSequence.Thinkful
//
//  Created by William H Fulton IV on 6/3/17.
//  Copyright © 2017 IVdev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var numberOfItemsSlider: UISlider!
    @IBOutlet weak var numberOfItemsLabel: UILabel!
    @IBOutlet weak var includeZeroLabel: UILabel!
    @IBOutlet weak var includeZero: UISwitch!
    @IBOutlet weak var textView: UITextView!
   
    var fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: 2, includesZero: true)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateFibonacciSequence()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
  

    @IBAction func updateFibonacciSequence() {
         includeZeroLabel.text = includeZero.isOn ? "Yes" : "No"
        
        if includeZero.isOn {
            numberOfItemsSlider.maximumValue = 94
        } else {
            numberOfItemsSlider.maximumValue = 93
        }
        numberOfItemsLabel.text = String(Int(numberOfItemsSlider.value))
        
        fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: UInt(UInt64(numberOfItemsSlider.value)), includesZero:includeZero.isOn)

        textView.text = fibonacciSequence.values.description

    }

}


        


//Update numberOfItemsLabel.... 

//look at properties for each IBOutlet
