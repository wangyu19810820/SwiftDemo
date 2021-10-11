//
//  ViewController.swift
//  UITableViewTest2
//
//  Created by wang yu on 2021/10/8.
//

import UIKit

class ViewController: UIViewController {

    var dataArray: Array<Product>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let product1 = Product()
        product1.name = "1杜康酒1500ml罐装"
        product1.subTitle = "何以解忧，唯有杜康，纯粮食酿造，国庆大酬宾"
        product1.imageName = "productImage"
        product1.price = 59.89
        let product2 = Product()
        product2.name = "2杜康酒1500ml罐装"
        product2.subTitle = "何以解忧，唯有杜康，纯粮食酿造，国庆大酬宾"
        product2.imageName = "productImage"
        product2.price = 59.1
        let product3 = Product()
        product3.name = "3杜康酒1500ml罐装"
        product3.subTitle = "何以解忧，唯有杜康，纯粮食酿造，国庆大酬宾"
        product3.imageName = "productImage"
        product3.price = 59
        dataArray = [product1, product2, product3]
        
        let tableView = UITableView(frame: self.view.bounds, style: UITableView.Style.grouped)
        tableView.register(UINib.init(nibName: "ProductTableViewCell", bundle: nil),
                           forCellReuseIdentifier: "TableViewCellId")
        self.view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.isEditing = true
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ProductTableViewCell = tableView.dequeueReusableCell(withIdentifier: "TableViewCellId", for: indexPath) as! ProductTableViewCell
        let product = dataArray[indexPath.row]
        cell.iconView.image = UIImage(named: product.imageName!)
        cell.titleLabel.text = product.name
        cell.detailLabel.text = product.subTitle
        cell.priceLabel.text = String(format: "%.2f元", product.price!)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        150
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        if indexPath.row == 0 {
            return UITableViewCell.EditingStyle.insert
        } else {
            return UITableViewCell.EditingStyle.delete
        }
    }
    
    func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        if indexPath.row == 0 {
            return "插入"
        } else {
            return "删除"
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            print("点击了删除按钮")
            dataArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.left)
        } else {
            print("点击了插入按钮")
            let product = Product()
            product.name = "1杜康酒1500ml罐装"
            product.subTitle = "何以解忧，唯有杜康，纯粮食酿造，国庆大酬宾"
            product.imageName = "productImage"
            product.price = 59.89
            dataArray.insert(product, at: indexPath.row + 1)
            tableView.insertRows(at: [IndexPath(row: indexPath.row + 1, section: indexPath.section)], with: UITableView.RowAnimation.fade)
        }
    }

    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let product = dataArray.remove(at: sourceIndexPath.row)
        dataArray.insert(product, at: destinationIndexPath.row)
    }
}
