//
//  ViewController.swift
//  HomeWork1
//
//  Created by Bernice on 2019/1/7.
//  Copyright © 2019年 Bernice. All rights reserved.
//

import UIKit

// 添加代理 UITableViewDelegate,UITableViewDataSource
class ViewController:UIViewController,UITableViewDelegate,UITableViewDataSource {
    

    //创建TableView
    var tableView = UITableView()
   // var dataArr = NSMutableArray()
    var  dataArr = [
        ("A", [("钱包","Wallet.png")]),
        ("B", [("收藏","Favorites.png"),("相册","Favorites.png"),("卡包","CardPackage.png"),("表情","Expressions.png")]),
        ("C", [("设置","Settings.png")])
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
     // dataArr = ["钱包","收藏","相册","卡包","表情","设置"]
       
    //  初始化TableView
        tableView = UITableView(frame: UIScreen.main.bounds,style:UITableView.Style.grouped)
        tableView.dataSource = self
        tableView.delegate = self
        self.view.addSubview(tableView)
        
        // 设置背景色
        self.view.backgroundColor = UIColor.groupTableViewBackground
        UINavigationBar.appearance().barTintColor = UIColor.white
        navigationController?.navigationBar.barStyle = UIBarStyle.default
        // 设置顶部导航栏标题
        self.navigationItem.title = "UserInfo"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")

    }
    
    //给一个tableViewf 分三个区域
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3;
    
    }
    
    //各个区域的行数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 1 {
            return 4
        }
        
        return 1
    }
    
    //加载不同的cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      //  let cellID = "cell";
        
      //  let cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: cellID)
        
        //cell.textLabel?.text = String(dataArr[indexPath.row] as! String)
       // cell.detailTextLabel?.text = "test\(dataArr[indexPath.row])"
        
        let cell:UITableViewCell!
        cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        let image = UIImage(named: dataArr[indexPath.section].1[indexPath.row].1)
        cell.imageView?.image = image
        cell.textLabel?.text = dataArr[indexPath.section].1[indexPath.row].0
        
        return cell
        
    }
    
    //cell高度
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: IndexPath) -> CGFloat {
        return 80;
    }
    
    // 设置 section 数量
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3;
    }


}

