//
//  ViewController.swift
//  Counter
//
//  Created by Сергей Хмелёв on 08.11.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var counterLabel: UILabel!
    @IBOutlet private weak var historyTextView: UITextView!
    @IBOutlet private weak var subOneButton: UIButton!
    @IBOutlet private weak var addOneButton: UIButton!
    @IBOutlet private weak var resetCounterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private var counter: Int = 0 {
        didSet {
            counterLabel.text = "\(counter)"
        }
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
    
    @IBAction private func subOne(_ sender: UIButton) {
        
        if counter > 0 {
            counter -= 1
            printValueChanged()
        } else {
            printSubZero()
        }
        
    }
    
    @IBAction private func addOne(_ sender: UIButton) {
        
        counter += 1
        printValueChanged()
        
    }
    
    
    @IBAction private func resetCounter(_ sender: UIButton) {
        
        counter = 0
        printResetCounter()
        
    }

}

