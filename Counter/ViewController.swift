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
    
    @IBOutlet weak var decrementButton: UIButton!
    
    @IBOutlet weak var incrementButton: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
    
    private var counter: Int = 0
}

