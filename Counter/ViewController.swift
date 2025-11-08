//
//  ViewController.swift
//  Counter
//
//  Created by Сергей Хмелёв on 08.11.2025.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var addOneButton: UIButton!
    
    private var counter: Int = 0 {
        didSet {
            counterLabel.text = "\(counter)"
        }
    }
    
    @IBAction func addOne(_ sender: UIButton) {
        counter += 1
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

