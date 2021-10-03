//
//  TableVC.swift
//  TableDemo
//
//  Created by wang yu on 2021/10/3.
//

import UIKit

class TableVC: UIViewController {

    var list: [String] = ["柴", "米", "油", "盐", "酱", "醋", "茶"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addButtonClick(_ sender: UIBarButtonItem) {
        goToEdit(index: nil)
    }
    
    @IBAction func reorderButtonClick(_ sender: UIBarButtonItem) {
        tableView.isEditing.toggle()
    }
    
    func goToEdit(index: Int?) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Item") as! EditVC
        vc.delegate = self
        if let index = index {
            vc.index = index
            vc.text = list[index]
        }
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension TableVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "item", for: indexPath)
        cell.textLabel?.text = list[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let element = list.remove(at: sourceIndexPath.row)
        list.insert(element, at: destinationIndexPath.row)
    }
}

extension TableVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        goToEdit(index: indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        UISwipeActionsConfiguration(actions: [
            UIContextualAction(style: .destructive, title: "Delete", handler: {_, _, completion in
                let alert = UIAlertController(title: nil, message: "确定要删除吗？", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: {(action) in
                    completion(true)
                }))
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {(action) in 
                    self.list.remove(at: indexPath.row)
                    tableView.deleteRows(at: [indexPath], with: .automatic)
                    completion(true)
                }))
                self.present(alert, animated: true, completion: nil)

            }),
            UIContextualAction(style: .normal, title: "Duplicate", handler: {_, _, completion in
                self.list.insert(self.list[indexPath.row], at: indexPath.row + 1)
                tableView.insertRows(at:[IndexPath(row: indexPath.row + 1, section: 0)], with: .automatic)
                completion(true)
            })
        ])
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        .none
    }
    
    func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        false
    }
}

extension TableVC: EditVCDelegate {
    func editVC(_ vc: EditVC, didSave text: String, index: Int?) {
        if let index = index {
            list[index] = text
            tableView.reloadRows(at: [IndexPath(row: index, section: 0)], with: .automatic)
        } else {
//            list.insert(text, at: 0)
//            tableView.insertRows(at: [IndexPath(row: 0, section: 0)], with: .automatic)
            list.append(text)
            let indexPath = IndexPath(row: list.count - 1, section: 0)
            tableView.insertRows(at: [indexPath], with: .none)
            tableView.scrollToRow(at: indexPath, at: .bottom, animated: false)
        }
    }
}
