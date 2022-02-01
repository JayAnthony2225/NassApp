//
//  ViewController.swift
//  Nassap
//
//  Created by Marco Cruz Velázquez on 1/26/22.
//

import UIKit

class ViewController: UIViewController {
    
    var imagen : UIImageView?
    var boton : UIButton?
    var etiqueta : UILabel?
    var etiquetaTitulo : UILabel?
    var rocketButton: UIButton?
    var planetImage : UIImageView?
    
    var width = UIScreen.main.bounds.width
    var height = UIScreen.main.bounds.height
    
    var whiteTextColor = UIColor(displayP3Red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
    var lightBTextColor = UIColor(displayP3Red: 199/255, green: 238/255, blue: 255/255, alpha: 1)
    var blueTextColor = UIColor(displayP3Red: 0/255, green: 119/255, blue: 192/255, alpha: 1)
    var darkBlueTextColor = UIColor(displayP3Red: 29/255, green: 36/255, blue: 43/255, alpha: 1)
    var grisTextColor = UIColor(displayP3Red: 57/255, green: 62/255, blue: 70/255, alpha: 1)
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   
        view.backgroundColor = .black
        initUI()
    }

        
    
    func initUI(){
        
        imagen = UIImageView(frame: CGRect(x: 10, y: 50, width: width - 20, height: height/3))
        imagen?.image = UIImage(named:"Image")
        imagen?.layer.masksToBounds = true
        imagen?.contentMode = .scaleAspectFill
        imagen?.layer.cornerRadius = 15
        view.addSubview(imagen!)
        
        etiquetaTitulo = UILabel(frame: CGRect(x: 50, y: 160, width: width - 100, height: height/4))
        etiquetaTitulo?.textColor = whiteTextColor
        etiquetaTitulo?.backgroundColor = .clear
        etiquetaTitulo?.text = "NASAPP"
        etiquetaTitulo?.textAlignment = .center
        etiquetaTitulo?.font = UIFont(name: "Helvetica Bold", size: 32)
        etiquetaTitulo?.adjustsFontSizeToFitWidth = true
        etiquetaTitulo?.numberOfLines = 0
        view.addSubview(etiquetaTitulo!)
        
        etiqueta = UILabel(frame: CGRect(x: 70, y: 450, width: width - 150 , height: 120))
        etiqueta?.textAlignment = NSTextAlignment.center
        etiqueta?.backgroundColor = .clear
        etiqueta?.textColor = lightBTextColor
        etiqueta?.numberOfLines = 0
        etiqueta?.font = UIFont(name: "Arial Bold", size: 32)
        etiqueta?.text = " Quieres ver algo increible del universo!!!"
        view.addSubview(etiqueta!)
        

        boton = UIButton(frame: CGRect(x: 60, y: height - 100, width: width - 120, height: 40))
        boton?.backgroundColor = .clear
        boton?.layer.cornerRadius = 15
        boton?.setTitle("Iniciar", for: .normal)
        boton?.addTarget(self, action: #selector(goToPlaneta), for: .touchUpInside)
       // registrateButton?.layer.backgroundColor = UIColor.systemBlue.cgColor
        view.addSubview(boton!)
        
        rocketButton = UIButton(frame: CGRect(x: width - 140, y: height - 105, width: 45, height: 45))
        rocketButton?.setImage(UIImage(named: "Rocket"), for: .normal)
        rocketButton?.addTarget(self, action: #selector(goToPlaneta), for: .touchUpInside)
        view.addSubview(rocketButton!)
    }
    
    
    
    
    // funcion para ir al Planetas View 
    
@objc func goToPlaneta()
        {
            print("presentando otro View")
            let libreriaOption = planetasViewController()
            libreriaOption.modalPresentationStyle = .fullScreen
            present(libreriaOption, animated: true,completion:
                        {
                        print("Presentando View de Registro")
                        })}
}
