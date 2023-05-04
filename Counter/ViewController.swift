//
//  ViewController.swift
//  Counter
//
//  Created by Askhad on 04.05.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    
    @IBOutlet weak var incrementButton: UIButton!
    
    private var counter: Int = 0
    
    @IBAction func incrementButtonPressed(_ sender: Any) {
        counter += 1
        counterLabel.text = "Значение счетчика: \(counter)"
    }
    
}

