//
//  ViewController.swift
//  RadioButtonSample
//
//  Created by Abhiraj Thakore on 18/04/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var btnRadioAll: [UIButton]!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        btnRadioAllAction(btnRadioAll[0])
    }

    //MARK: - UIButton Action Outlets
    
    @IBAction func btnRadioAllAction(_ sender: UIButton) {
        
        print("Tag of the clicked button>>>", sender.tag)
        
        for btn in btnRadioAll{
            if sender.tag == btn.tag{ //Clicked button tag
                btn.setImage(UIImage(named: "ic_On"), for: .normal)
            }else{
                btn.setImage(UIImage(named: "ic_Off"), for: .normal)
            }
        }
        
    }
    

}

