//
//  ViewController.swift
//  UISearchBarTest
//
//  Created by wang yu on 2021/10/6.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let searchBar = UISearchBar(frame: CGRect(x: 20, y: 100, width: 280, height: 30))
        searchBar.searchBarStyle = UISearchBar.Style.minimal
//        searchBar.barTintColor = UIColor.red
//        searchBar.backgroundImage = UIImage(named: "image")
        searchBar.placeholder = "请输入要搜索的文字"
//        searchBar.prompt = "搜索"
        searchBar.showsCancelButton = true
        searchBar.showsBookmarkButton = true
        searchBar.showsSearchResultsButton = true
        
        searchBar.showsScopeBar = true
        searchBar.scopeButtonTitles = ["女鞋", "男鞋", "童鞋"]
        searchBar.selectedScopeButtonIndex = 1
        
        searchBar.delegate = self
        self.view.addSubview(searchBar)
    }
}

extension ViewController: UISearchBarDelegate {
    func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool {
        return true
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        print(#function)
    }
    
    func searchBarShouldEndEditing(_ searchBar: UISearchBar) -> Bool {
        return true
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        print(#function)
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
    }
    
    func searchBar(_ searchBar: UISearchBar, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        return true
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
    
    func searchBarBookmarkButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
    
    func searchBarResultsListButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
    
    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        print("选择的索引：\(selectedScope)")
    }
}
