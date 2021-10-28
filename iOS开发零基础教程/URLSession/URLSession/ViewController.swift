//
//  ViewController.swift
//  URLSession
//
//  Created by wang yu on 2021/10/22.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    private var label: UILabel!
    private var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vStack = UIStackView()
        vStack.translatesAutoresizingMaskIntoConstraints = false
        vStack.backgroundColor = .systemGray5
        vStack.axis = .vertical
        view.addSubview(vStack)
        
        NSLayoutConstraint.activate([
            vStack.leftAnchor.constraint(greaterThanOrEqualTo: view.leftAnchor),
            vStack.rightAnchor.constraint(lessThanOrEqualTo: view.rightAnchor),
            vStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            vStack.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
        
        label = UILabel()
        label.font = .systemFont(ofSize: 30)
        label.numberOfLines = 0
        vStack.addArrangedSubview(label)
        
        button = UIButton()
        button.titleLabel?.font = .boldSystemFont(ofSize: 30)
        button.setTitleColor(button.tintColor, for: .normal)
        button.setTitle("Send", for: .normal)
        button.addTarget(self, action: #selector(clickButton), for: .touchUpInside)
        vStack.addArrangedSubview(button)
        
    }

    @objc private func clickButton() {
        let urlString = "https://raw.githubusercontent.com/xiaoyouxinqing/Learn-iOS-from-Zero/main/API/NewsExample/NewsList.json"
//        AF.request(
//            urlString,
//            method: .post,
//            parameters: ["page": 1],
//            encoding: JSONEncoding.default,
//            headers: ["Token": "ajfiifjafo"]
        AF.request(
            urlString,
            method: .get,
            parameters: ["page": 1],
            encoding: URLEncoding.default
        ).responseData { response in
            print(response.result)
            print("Is main thread: \(Thread.isMainThread)")
            switch response.result {
            case let .success(data):
                if let list = try? JSONDecoder().decode(NewsList.self, from: data) {
                    self.updateText2(list.displayText)
                }
            case let .failure(error):
                self.updateText2(error.localizedDescription)
            }
        }
    }
    
    @objc private func clickButton1() {
        let url = URL(string: "https://raw.githubusercontent.com/xiaoyouxinqing/Learn-iOS-from-Zero/main/API/NewsExample/NewsList.json")!
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
//        request.addValue("asdfsdaf", forHTTPHeaderField: "Token")
//        request.httpMethod = "POST"
//        let dic = ["page": 1]
//        let data = try! JSONSerialization.data(withJSONObject: dic, options: [])
//        request.httpBody = data
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                self.updateText(error.localizedDescription)
                return
            }
            guard let response = response as? HTTPURLResponse,
                response.statusCode >= 200,
                response.statusCode < 300 else {
                    self.updateText("Invalid response")
                return
            }
            guard let data = data else {
                self.updateText("No data")
                return
            }
            guard let list = try? JSONDecoder().decode(NewsList.self, from: data) else {
                self.updateText("No list")
                return
            }
            self.updateText(list.displayText)
        }
        task.resume()
    }
    
    private func updateText(_ text: String) {
        DispatchQueue.main.async {
            self.label.text = text
        }
    }
    
    private func updateText2(_ text: String) {
        self.label.text = text
    }
}

