//
//  ViewController.swift
//  Counter
//
//  Created by Сергей Хмелёв on 08.11.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var historyTextView: UITextView!
    @IBOutlet weak var subOneButton: UIButton!
    @IBOutlet weak var addOneButton: UIButton!
    @IBOutlet weak var resetCounterButton: UIButton!
    
    private var counter: Int = 0 {
        didSet {
            counterLabel.text = "\(counter)"
        }
    }
    
    @IBAction func subOne(_ sender: UIButton) {
        
        if counter > 0 {
            counter -= 1
            printValueChanged()
        } else {
            printSubZero()
        }
        
    }
    
    @IBAction func addOne(_ sender: UIButton) {
        
        counter += 1
        printValueChanged()
        
    }
    
    
    @IBAction func resetCounter(_ sender: UIButton) {
        
        counter = 0
        printResetCounter()
        
    }
    
    private func printValueChanged(){
        
        historyTextView.text.append("\n\(Date()): Значение изменено на \(counter)")
        scrollHistoryTextView()
        
    }
    
    private func printSubZero(){
        
        historyTextView.text.append("\n\(Date()): попытка уменьшить значение счётчика ниже 0")
        scrollHistoryTextView()
        
    }
    
    private func printResetCounter(){
        
        historyTextView.text.append("\n\(Date()): Значение сброшено")
        scrollHistoryTextView()
        
    }
    
    private func scrollHistoryTextView(){
        
        if let text = historyTextView.text, !text.isEmpty {
            let lastCharRange = NSRange(location: text.count - 1, length: 0)
            historyTextView.scrollRangeToVisible(lastCharRange)
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

