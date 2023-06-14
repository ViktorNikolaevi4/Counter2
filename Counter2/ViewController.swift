//
//  ViewController.swift
//  Counter2
//
//  Created by Виктор Корольков on 14.06.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    var number = 0
    
    var dateFormat = DateFormatter()
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        textView.isEditable = false
        textView.text = "История изменений:"
        dateFormat.locale = Locale(identifier: "ru")
        dateFormat.dateFormat = "MM/dd/YY, h:mm:ss"
        
    }


    
    

    @IBAction func plusButton(_ sender: UIButton) {
        number += 1
        label.text = "\(number)"
        textView.text = textView.text  + "\n" + ("\(dateFormat.string(from: Date())):значение изменено на +1\n")
                                              
    }
    
    @IBAction func minusButton(_ sender: UIButton) {
        number -= 1
        if number < 0 {textView.text = textView.text + "\n" + ("\(dateFormat.string(from: Date())):попытка уменьшить значение счётчика ниже 0\n")} else {textView.text = textView.text + "\n" + ("\(dateFormat.string(from: Date())):значение изменено на -1\n")}
        if number == -1{number = 0}
        label.text = "\(number)"
    }
    
    @IBAction func zeroButton(_ sender: UIButton) {
        number = (number - number)
        label.text = "\(number)"
        textView.text = textView.text + "\n" + ("\(dateFormat.string(from: Date())):значение сброшено\n")
    }
    
    
}

