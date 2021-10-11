//
//  ViewController.swift
//  UITableViewTest3
//
//  Created by wang yu on 2021/10/8.
//

import UIKit

class ViewController: UIViewController {

    var dataArray: [String]!
    var titleArray: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataArray = []
        for _ in 0..<4 {
            dataArray.append("联系人")
        }
        
        titleArray = ["#","A","B","C","D","E","F","G","H","更多"]
        
        let tableView = UITableView(frame: self.view.bounds, style: UITableView.Style.grouped)
        tableView.register(NSClassFromString("UITableViewCell"), forCellReuseIdentifier: "TableViewCellId")
        tableView.dataSource = self
        tableView.delegate = self
        self.view.addSubview(tableView)
    }
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        titleArray.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCellId", for: indexPath)
        cell.textLabel?.text = dataArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        titleArray[section]
    }
    
    // table右侧索引栏标题
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        titleArray
    }
    
    // 点击索引跳转到第几个section
    func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int {
        index
    }
}

extension ViewController: UITableViewDelegate {
    
}
