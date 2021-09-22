import UIKit

var user = ["name":"wangyu", "password":"111111", "occupation":"programmer"]

user["occupation"] = "freelancer"
user.updateValue("222222", forKey: "password")

let oldPassword = user.updateValue("222222", forKey: "password")
if let oldPassword = oldPassword, let newPassword = user["password"], oldPassword == newPassword {
    print("注意：修改后的密码和之前一样，可能导致安全问题！")
}

user["email"] = "wangyu@gmail.com"
user
user.updateValue("imooc.com", forKey: "website")
user

user["website"] = nil
user

//user.removeValue(forKey: "email")
//user

if let email = user.removeValue(forKey: "email") {
    print("电子邮箱 \(email) 删除成功")
}

user.removeAll()
