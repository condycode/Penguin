//
//  ViewController.swift
//  Penguin
//
//  Created by mengdong on 16/8/20.
//  Copyright © 2016年 ShengboCai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = .white
        self.title = "首页"
        let barItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.compose, target: self, action: #selector(goPenguinVC))
        self.navigationItem.rightBarButtonItem = barItem
    }
    
    @objc func goPenguinVC() {
        let vc = PenguinViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

