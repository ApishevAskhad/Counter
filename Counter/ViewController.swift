//
//  ViewController.swift
//  Counter
//
//  Created by Askhad on 04.05.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    
    @IBOutlet weak var historyTextView: UITextView!
    
    private var counter: Int = 0
    
    private let COUNTER_MAX_VALUE = 100
    
    private let COUNTER_MIN_VALUE = 0
    
    private let DELTA = 1
    
    @IBAction func incrementButtonClicked(_ sender: Any) {
        if (counter + DELTA < COUNTER_MAX_VALUE) {
            counter += DELTA
            updateCounter()
        }
    }
    
    @IBAction func decrementButtonClicked(_ sender: Any) {
        if (counter - DELTA >= COUNTER_MIN_VALUE) {
            counter -= DELTA
            updateCounter()
        }
    }
    
    @IBAction func resetButtonClicked(_ sender: Any) {
        counter = 0
        updateCounter()
    }
    
    private func updateCounter() {
        counterLabel.text = "\(counter)"
    }
        
}

