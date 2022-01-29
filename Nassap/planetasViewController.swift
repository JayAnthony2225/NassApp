//
//  planetasViewController.swift
//  Nassap
//
//  Created by Marco Cruz Velázquez on 1/26/22.
//

import UIKit

class planetasViewController: UIViewController {
    
    var hola : UILabel?
    
    var width = UIScreen.main.bounds.width
    var height = UIScreen.main.bounds.height

    override func viewDidLoad() {
        super.viewDidLoad()

       
    
    
    view.backgroundColor = .black
    initUI()


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
    
    
}
}
