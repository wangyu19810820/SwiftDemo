//
//  ViewController.swift
//  FileDemo
//
//  Created by wang yu on 2021/10/4.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        dataContainerDirectory()
        checkExist()
        saveData()
        checkExist()
        readData()
        deleteData()
        checkExist()
    }

    var dataUrl: URL {
        var url = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        url.appendPathComponent("my_folder/folder1/flolder2")
        try? FileManager.default.createDirectory(at: url,
                                                 withIntermediateDirectories: true,
                                                 attributes: nil)
        url.appendPathComponent("hello.txt")
//        print(url)
        return url
    }
    func saveData() {
        do {
            try "Hello World!".write(to: dataUrl, atomically: false, encoding: .utf8)
            print("write success")
        } catch {
            print("Write error:\(error)")
        }
        
    }
    
    func readData() {
        do {
            let s = try String(contentsOf: dataUrl, encoding: .utf8)
            print("read success:\(s)")
        } catch {
            print("read error:\(error)")
        }
    }
    
    func deleteData() {
        do {
            try FileManager.default.removeItem(at: dataUrl)
            print("delete success")
        } catch {
            print("delete error:\(error)")
        }
    }
    
    func checkExist() {
        if FileManager.default.fileExists(atPath: dataUrl.path) {
            print("exist")
        } else {
            print("not exist")
        }
    }
    func dataContainerDirectory() {
        let document = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        print(document)
        print()
        
        let support = FileManager.default.urls(for: .applicationSupportDirectory, in: .userDomainMask)
        print(support)
        print()
        
        let cache = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask)
        print(cache)
        print()
        
        let temp = FileManager.default.temporaryDirectory
        print(temp)
        print()
    }
}

