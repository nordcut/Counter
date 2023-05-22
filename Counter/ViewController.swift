//
//  ViewController.swift
//  Counter
//
//  Created by kirill bogdanov on 21.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var textView = UITextView()
    var currentDate = Date()
    let color1 = UIColor(red: 189 / 255, green: 224 / 255, blue: 254 / 255, alpha: 1.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createTextView()
        // Do any additional setup after loading the view.
    }
    
    // MARK: Buttons, Label, Log

    @IBOutlet weak var label: UILabel!
    
    @IBAction func plusButton(_ sender: Any) {
        count = count + 1
        label.text = "Значение счетчика = \(count)"
        textView.text = "\(currentDate) значение изменено на +1"
    }
    
    @IBAction func minusButton(_ sender: Any) {
        count = count - 1
        label.text = "Значение счетчика = \(count)"
        textView.text = "\(currentDate) значение изменено на -1"
        if count < 0 {
            textView.text = "\(currentDate) попытка уменьшить значение счётчика ниже 0"
        }
    count = 0
    }
    
    @IBAction func resetButton(_ sender: Any) {
        count = 0
        label.text = "0"
        textView.text = "\(currentDate) значение обнулено"
    }
    
    func createTextView() {
        textView = UITextView(frame: CGRect(x: 20, y: 100, width: self.view.bounds.width - 40, height: self.view.bounds.height / 3.5 ))
        textView.backgroundColor = color1
        self.view.addSubview(textView)
    }
    
    
}

