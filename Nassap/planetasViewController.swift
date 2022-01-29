//
//  planetasViewController.swift
//  Nassap
//
//  Created by Marco Cruz Velázquez on 1/26/22.
//

import UIKit

class planetasViewController: UIViewController, UITextFieldDelegate {
    
    var hola : UILabel?
    
    var width = UIScreen.main.bounds.width
    var height = UIScreen.main.bounds.height
    var SearchTextField: UITextField!
    
    var weatherManager =  WeatherManager()

    override func viewDidLoad() {
        super.viewDidLoad()

    
    
        view.backgroundColor = .white
    initUI()
        
    SearchTextField.delegate = self


}
    func initUI(){
    hola = UILabel(frame: CGRect(x: 70, y: 440, width: width - 150 , height: 40))
    hola?.textAlignment = NSTextAlignment.center
    hola?.backgroundColor = .blue
        hola?.textColor = .white
    hola?.font = UIFont(name: "Arial Bold", size: 28)
    //bienvenidoLabel?.layer.cornerRadius = 10
    //bienvenidoLabel?.layer.borderColor = UIColor.black.cgColor
    //bienvenidoLabel?.layer.borderWidth = 3
    hola?.text = " ¡Hola de nuevo ! "
    view.addSubview(hola!)
    
    SearchTextField = UITextField(frame: CGRect(x: 70, y: 350, width: width - 150 , height: 40))
        SearchTextField?.placeholder = "fecha %YYYY-%MM-%DD"
        SearchTextField?.backgroundColor = .white
        SearchTextField?.layer.cornerRadius = 7
        SearchTextField?.layer.borderColor = UIColor.black.cgColor
        SearchTextField?.layer.borderWidth = 1
        view.addSubview(SearchTextField!)
}
    
    @IBAction func SearchPressed(_ sender: UIButton) {
        SearchTextField.endEditing(true)
        print(SearchTextField.text!)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        SearchTextField.endEditing(true)
        print(SearchTextField.text!)
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        if let city = SearchTextField.text {
            weatherManager.fetchWeather(cityName: city)
        }
        SearchTextField.text = ""
    }
}
