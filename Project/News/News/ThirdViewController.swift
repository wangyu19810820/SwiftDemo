//
//  TechViewController.swift
//  News
//
//  Created by wang yu on 2021/10/10.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    var refreshControl = UIRefreshControl()
    var loadMoreView: UIView!
    var loadMoreEnable = true
    var timer: Timer!
    var dataArray = [News]()
    var page = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        self.automaticallyAdjustsScrollViewInsets = false
        self.title = "汽车"
//        self.tableView.estimatedRowHeight = 0;
//        self.tableView.estimatedSectionHeaderHeight = 0;
//        self.tableView.estimatedSectionFooterHeight = 0

        tableView.register(UINib.init(nibName: "NewsCell", bundle: nil),
                           forCellReuseIdentifier: "cell")
        refreshControl.addTarget(self, action: #selector(refreshData), for: .valueChanged)
        refreshControl.attributedTitle = NSAttributedString(string: "下拉刷新数据")
        tableView.addSubview(refreshControl)

        //上拉刷新
        self.setupInfiniteScrollingView()
        self.tableView.tableFooterView = self.loadMoreView
         
        //首次加载数据
        loadMore()
    }

    //上拉刷新视图
    private func setupInfiniteScrollingView() {
        self.loadMoreView = UIView(frame: CGRect(x:0, y:self.tableView.contentSize.height,
                                                 width:self.tableView.bounds.size.width, height:60))
        self.loadMoreView!.autoresizingMask = UIView.AutoresizingMask.flexibleWidth
//        self.loadMoreView!.backgroundColor = UIColor.orange
         
        //添加中间的环形进度条
        let activityViewIndicator = UIActivityIndicatorView(style: .medium)
        activityViewIndicator.color = UIColor.darkGray
        let indicatorX = self.view.frame.width/2-activityViewIndicator.frame.width/2
        let indicatorY = self.loadMoreView!.frame.size.height/2-activityViewIndicator.frame.height/2
        activityViewIndicator.frame = CGRect(x:indicatorX, y:indicatorY,
                                             width:activityViewIndicator.frame.width,
                                             height:activityViewIndicator.frame.height)
        activityViewIndicator.startAnimating()
        self.loadMoreView!.addSubview(activityViewIndicator)
    }
    
    @objc private func refreshData() {
        print("okkkkkkkk")
        loadMoreEnable = false
        CarInterface().request(page: 1) { (isSuccess, data) in
            print(data)
            self.dataArray.removeAll()
            self.dataArray += data
            DispatchQueue.main.async {
                self.page = 2
                self.tableView.reloadData()
                self.loadMoreEnable = true
                self.refreshControl.endRefreshing()
            }
        }
    }
    
    func loadMore(){
        print("加载新数据！")
        loadMoreEnable = false
        CarInterface().request(page: page) { (isSuccess, data) in
            print(data)
            self.dataArray += data
            DispatchQueue.main.async {
                self.page += 1
                self.tableView.reloadData()
                self.loadMoreEnable = true
            }
        }
    }
}

extension ThirdViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        dataArray.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NewsCell
        let news = dataArray[indexPath.section]
        cell.title.text = news.title
        cell.icon.downloadedFrom(imageurl: news.picUrl)
        cell.date.text = news.time
        cell.source.text = news.source
        
        if (loadMoreEnable && indexPath.section == self.dataArray.count-1) {
            loadMore()
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let news = dataArray[indexPath.section]
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let detailVC = sb.instantiateViewController(withIdentifier: "detail") as! DetailViewController
        detailVC.urlString = news.url
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        150
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        1
    }
}
