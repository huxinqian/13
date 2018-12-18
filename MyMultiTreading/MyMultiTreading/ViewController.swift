//
//  ViewController.swift
//  MyMultiTreading
//
//  Created by student on 2018/12/12.
//  Copyright © 2018年 2016110314. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sumLabel: UILabel!
    
    @IBOutlet weak var autoLabel: UILabel!
    
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
            self.count += 1
            self.autoLabel.text = "\(self.count)"
        }.fire()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func calculate(_ sender: Any) {
        var sum = 0
        
        DispatchQueue.global().async {
            for i in 1...9999999 {
                sum += i
            }
            DispatchQueue.main.async {
                self.sumLabel.text = "\(sum)"
            }
        }
    }
}

