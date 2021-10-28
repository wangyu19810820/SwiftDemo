//
//  ChangeCityViewController.swift
//  Weather
//
//  Created by wang yu on 2021/10/26.
//

import UIKit

protocol ChangeCityDelegate {
    func userEnteredANewCityName(city: String)
}

class ChangeCityViewController: UIViewController {

    @IBOutlet weak var changeCityTextField: UITextField!
    var delegate: ChangeCityDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func getWeatherPressed(_ sender: UIButton) {
        let cityName = changeCityTextField.text!
        delegate?.userEnteredANewCityName(city: cityName)
        self.dismiss(animated: true, completion: nil)
    }
    
}
