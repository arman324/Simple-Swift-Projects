//
//  ViewController.swift
//  01-Light
//
//  Created by Arman Riasi on 4/4/20.
//  Copyright © 2020 Arman Riasi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var buttonPressed: UIView!
    @IBOutlet var myLabel: UILabel!
    @IBOutlet var mainLabel: UILabel!
    
    var lightMode = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myLabel.textColor = UIColor(ciColor: .black)
        mainLabel.textColor = UIColor(ciColor: .white)
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        
        lightMode.toggle()
        updateUI()

    }
    func updateUI() {
        if lightMode {
            view.backgroundColor = .white
            myLabel.textColor = UIColor(ciColor: .black)
            mainLabel.textColor = UIColor(ciColor: .black)
        } else {
            view.backgroundColor = .black
            myLabel.textColor = UIColor(ciColor: .white)
            mainLabel.textColor = UIColor(ciColor: .white)
        }
    }
}

