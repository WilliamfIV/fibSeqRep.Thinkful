//
//  ViewController.swift
//  fibonacciSequence.Thinkful
//
//  Created by William H Fulton IV on 6/3/17.
//  Copyright © 2017 IVdev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: 2, includesZero: true)
    @IBOutlet weak var numberOfItemsSlider: UISlider!
    @IBOutlet weak var numberOfItemsLabel: UILabel!
    @IBOutlet weak var includeZeroLabel: UILabel!
    @IBOutlet weak var includeZero: UISwitch!
    @IBOutlet weak var textView: UITextView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateFibonacciSequence()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func updateFibonacciSequence() {
        fibonacciSequence = FibonacciSequence(numberOfItemsInSequence:UInt(numberOfItemsSlider.value), includesZero:includeZero.isOn)
            textView.text = fibonacciSequence.values.description
        
            includeZeroLabel.text = includeZero.isOn ? "Yes" : "No"
            numberOfItemsLabel.text = String(Int(numberOfItemsSlider.value))
    }

}


        


//text view wont update when slider is mmoved. //check min and max in attribute inspector, google and use slack... ur hitting a brick wall

//look at properties for each IBOutlet
