//
//  ViewController.swift
//  MyWebView
//
//  Created by student on 2018/12/15.
//  Copyright © 2018年 huxinqian. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet weak var urlText: UITextField!

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let url = URL(string: "https://www.baidu.com") {
            webView.load(URLRequest(url: url))
        }
    }

    @IBAction func go(_ sender: Any) {
        if let url = URL(string: "\(urlText.text!)") {
            webView.load(URLRequest(url: url))
        }
    }
    @IBAction func reload(_ sender: Any) {
        webView.reload()
    }
    @IBAction func forward(_ sender: Any) {
        webView.goForward()
    }
    @IBAction func back(_ sender: Any) {
        webView.goBack()
    }
}






