import UIKit

func tier1MailFeeByWeight(weight: Int) -> Int {
    return 1 * weight
}

func tier2MailFeeByWeight(weight: Int) -> Int {
    return 3 * weight
}

func feeByUnitPrice(price: Int, weight: Int) -> Int {
    func chooseMailFeeCalculationByWeight(weight: Int) -> (Int) -> Int {
        return weight <= 10 ? tier1MailFeeByWeight : tier2MailFeeByWeight
    }
    
    let mailFeeByWeight = chooseMailFeeCalculationByWeight(weight: weight)
    return mailFeeByWeight(weight) + price * weight
}

feeByUnitPrice(price: 30, weight: 20)
