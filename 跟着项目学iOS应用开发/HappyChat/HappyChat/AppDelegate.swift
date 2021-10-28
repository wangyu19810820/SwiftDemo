//
//  AppDelegate.swift
//  HappyChat
//
//  Created by wang yu on 2021/10/27.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func save(){
        let gamescore:BmobObject = BmobObject(className: "GameScore")
        gamescore.setObject("Jhon Smith", forKey: "playerName")
        gamescore.setObject(90, forKey: "score")
        gamescore.saveInBackground { (isSuccessful, error) in
            if error != nil{
                print("error is \(String(describing: error?.localizedDescription))")
            }else{
                print("success")
            }
        }
    }
    
    func queryUsers()  {
        let query:BmobQuery = BmobQuery(className: "GameScore")
        query.order(byDescending: "createdAt")
        query.findObjectsInBackground { (array, error) in
           // for var i = 0;i<(array?.count)!;++i{
           // for   var i in 0 ..<array.countdo do {
            for  i in 0..<array!.count{
                let obj = array![i]
                print("object: \(obj)")

            }
        }
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        Bmob.register(withAppKey: "3124f50157a5df138aba77a85e1d8909")
        save()
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

