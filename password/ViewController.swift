//
//  ViewController.swift
//  password
//
//  Created by LI,JYUN-SIAN on 14/6/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var passcodesImageView: [UIImageView]!
    @IBOutlet var numberButton: [UIButton]!
    
 
    var passcode = "1234"
    var entercode = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
    func imageChange() {
        switch entercode.count {
        case 1:
            for i in 0...3 {
                passcodesImageView[i].isHighlighted = true
                if i > 0 {
                    passcodesImageView[i].isHighlighted = false
                }
            }
        case 2:
            for i in 0...3 {
                passcodesImageView[i].isHighlighted = true
                if i > 1 {
                    passcodesImageView[i].isHighlighted = false
                }
            }
        case 3:
            for i in 0...3 {
                passcodesImageView[i].isHighlighted = true
                if i > 2 {
                    passcodesImageView[i].isHighlighted = false
                }
            }
        case 4:
            for i in passcodesImageView {
                i.isHighlighted = true
            }
            checkPasscode()
        default:
            for i in passcodesImageView {
                i.isHighlighted = false
            }
        }
    }
    
    func checkPasscode() {
        if entercode == passcode {
            let controller = UIAlertController(title: "Corret", message: "Welcome Back!", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default) { (_) in
                self.reset()
            }
            controller.addAction(action)
            present(controller, animated: true, completion: nil)
            
        }else{
            let controller = UIAlertController(title: "Wrong", message: "Please Try Again!", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            controller.addAction(action)
            present(controller, animated: true, completion: reset)
        }
    }
    
    func reset() {
        for i in passcodesImageView {
            i.isHighlighted = false
        }
        entercode = ""
    }
    
    
    
    @IBAction func enterPasscodes(_ sender: UIButton) {
        if entercode.count != 4 {
            if let inputNumber = sender.currentTitle {
                entercode.append(inputNumber)
            }
        }
        imageChange()
    }
    
 }
