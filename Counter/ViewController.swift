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
            updateHistory("значение изменено на +\(DELTA)")
        }
    }
    
    @IBAction func decrementButtonClicked(_ sender: Any) {
        if (counter - DELTA >= COUNTER_MIN_VALUE) {
            counter -= DELTA
            updateCounter()
            updateHistory("значение изменено на -\(DELTA)")
        } else {
            updateHistory("попытка уменьшить значение счетчика ниже \(COUNTER_MIN_VALUE)")
        }
    }
    
    @IBAction func resetButtonClicked(_ sender: Any) {
        counter = 0
        updateCounter()
        updateHistory("значение сброшено")
    }
    
    private func updateCounter() {
        counterLabel.text = "\(counter)"
    }
    
    private func updateHistory(_ message: String) {
        let currentDate = Date()
        let formatter = DateFormatter()
        formatter.timeStyle = .medium
        formatter.dateStyle = .medium
        historyTextView.text = "\(formatter.string(from: currentDate)): \(message)"
    }
}
