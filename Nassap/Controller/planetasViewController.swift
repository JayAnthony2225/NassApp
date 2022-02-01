//
//  planetasViewController.swift
//  Nassap
//
//  Created by Marco Cruz Velázquez on 1/26/22.
//

import UIKit

class planetasViewController: UIViewController, UITextFieldDelegate, PhotoDayManagerDelegate {
    
    var hola : UILabel?
    
    var width = UIScreen.main.bounds.width
    var height = UIScreen.main.bounds.height
    var SearchTextField: UITextField!
    var date : UILabel?
    var image1 : UIImageView?
    var title1 : UILabel?
    
    var photoManager = PhotoManager()

    override func viewDidLoad() {
        super.viewDidLoad()

       
    
    view.backgroundColor = .black
    initUI()
        
    photoManager.delegate = self
    SearchTextField.delegate = self


}
    func initUI(){
    hola = UILabel(frame: CGRect(x: 10, y: 90, width: width , height: 40))
    hola?.textAlignment = NSTextAlignment.center
    hola?.backgroundColor = .clear
        hola?.textColor = .white
    hola?.font = UIFont(name: "Arial Bold", size: 18)
    //bienvenidoLabel?.layer.cornerRadius = 10
    //bienvenidoLabel?.layer.borderColor = UIColor.black.cgColor
    //bienvenidoLabel?.layer.borderWidth = 3
    hola?.text = " ¡Ingresa una fecha porfavor ! "
    view.addSubview(hola!)
    
        SearchTextField = UITextField(frame: CGRect(x: 70, y: 125, width: width - 120 , height: 40))
        SearchTextField?.placeholder = "YYYY-MM-DD"
        SearchTextField?.textAlignment = .center
        SearchTextField?.backgroundColor = .white
        SearchTextField?.layer.cornerRadius = 7
        SearchTextField?.layer.borderColor = UIColor.black.cgColor
        SearchTextField?.layer.borderWidth = 1
        view.addSubview(SearchTextField!)
        
        date = UILabel(frame: CGRect(x: 70, y: 670, width: width - 150 , height: 40))
        date?.textAlignment = NSTextAlignment.center
        date?.backgroundColor = .clear
        date?.textColor = .white
        date?.font = UIFont(name: "Arial Bold", size: 20)
        date?.text = ""
        view.addSubview(date!)
        
        title1 = UILabel(frame: CGRect(x: 40, y: 610, width: width - 80 , height: 60))
        title1?.textAlignment = NSTextAlignment.center
        title1?.backgroundColor = .clear
        title1?.textColor = .white
        title1?.numberOfLines = 0
        title1?.font = UIFont(name: "Arial Bold", size: 18)
        title1?.text = ""
        view.addSubview(title1!)
        
        
        image1 = UIImageView (frame: CGRect(x: 0, y: 190, width: width , height: height/2))
        //image1?.image = UIImage(named: "")
        image1?.contentMode = .scaleAspectFit
        view.addSubview(image1!)
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
        
        if let day = SearchTextField.text {
            photoManager.fetchPhoto(dateDay: day)
        }
        SearchTextField.text = ""
    }
    
    
    //actulizamos la informacion obtenida de nuestra Api
    func didUpdatePhotoDay(_ photoManager: PhotoManager,photoDay: PhotoDayModel) {
        DispatchQueue.main.async {
            self.date?.text = photoDay.date
            self.title1?.text = photoDay.title
            //self.image?.image = photoDay.url
            //self.image1?.image = UIImage(named: photoDay.url)
            
            let url = URL(string: photoDay.url)
              if let data = try? Data(contentsOf: url!) {
                  self.image1?.image = UIImage(data: data)!

            
        }
    }
    }
    
}


/*
 
 if let url = NSURL(string: photoDay.url) {
   if let data = NSData(contentsOfURL: url) {
      image.image = UIImage(data: data)
 
 let url = URL(string: photoDay.url) let data = try? Data(contentsOf: url) if let image = data { let image = UIImage(data: image) }
   }
 }
 
 
 
 let url = URL(string: "http://i.imgur.com/w5rkSIj.jpg") let data = try? Data(contentsOf: url) if let imageData = data { let image = UIImage(data: imageData) }
 
 
 */
