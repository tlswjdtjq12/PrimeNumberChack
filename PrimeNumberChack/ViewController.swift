//
//  ViewController.swift
//  PrimeNumberChack
//
//  Created by D7703_19 on 2018. 3. 29..
//  Copyright © 2018년 D7703_19. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt01: UITextField!
    
    @IBOutlet weak var lbl01: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnCheck(_ sender: Any) {
        
        
        
        var isPrime = true
        let num = Int(txt01.text!)
        
        if num == 1 {
            isPrime = false
        }
        
        if num != 1  && num != 2 {
            for i in 2 ..< num! {
                if num! % i == 0 {
                    isPrime = false
                }
            }
        }
        
        if isPrime == true {
            lbl01.text = "prime number"
        } else{
            lbl01.text = "Not prime number"
        }
    
    }
    
    
    @IBAction func btnRe(_ sender: Any) {
        lbl01.text = ""
        txt01.text = ""
    }
    
    
}

