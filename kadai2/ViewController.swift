//
//  ViewController.swift
//  kadai2
//
//  Created by 堤健二 on 2024/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
   
    
    @IBOutlet weak var segmentedcontrol: UISegmentedControl!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func selectSegmentedControl(_ sender: Any) {
    }
    
    @IBAction func pressButton(_ sender: Any) {
        
        var num = segmentedcontrol.selectedSegmentIndex
                
        let textField1Num = Int(textField1.text ?? "") ?? 0
        let textField2Num = Int(textField2.text ?? "") ?? 0
        
    
        switch num {
        case 0 :
            let sumResult = textField1Num + textField2Num
            label.text = String(sumResult)
        case 1 :
            let subResult = textField1Num - textField2Num
            label.text = String(subResult)
        case 2 :
            let multiResult = textField1Num * textField2Num
            label.text = String(multiResult)
            
        default:
            let divResult = textField1Num / textField2Num
            label.text = String(divResult)
        }
    }
}

