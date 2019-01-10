//
//  RootViewController.swift
//  HomeWork1
//
//  Created by Bernice on 2019/1/7.
//  Copyright © 2019年 Bernice. All rights reserved.
//

import UIKit

class RootViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 设置背景色
        self.view.backgroundColor = UIColor.groupTableViewBackground
        UINavigationBar.appearance().barTintColor = UIColor.white
        // 设置标题
        self.navigationItem.title = "HomePage"
  
    }
    
}
