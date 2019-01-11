//
//  ContactDetailsViewController.swift
//  Actividad2
//
//  Created by usuario on 1/8/19.
//  Copyright © 2019 gs. All rights reserved.
//

import UIKit

class ContactDetailsViewController: UIViewController {
    var idContact : Int?
    var datauser : Contacto?;
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
          var arrayContactos = ContactosPersiste.init().GetDataContactos([idContact!])
        datauser = arrayContactos[0]
        
        
        let lbNombre = UILabel(frame: CGRect(x: 00, y:600, width: 400, height: 50))
        lbNombre.textAlignment = .justified
        lbNombre.text="Nombre de contacto: \(arrayContactos[0].nombre)";
        lbNombre.frame=CGRect(x: 50, y:100, width: 300, height: 50)
        lbNombre.textColor = .black;
          self.view.addSubview(lbNombre)
        
        let lbUbicacion = UILabel(frame: CGRect(x: 00, y:600, width: 400, height: 50))
        lbUbicacion.textAlignment = .justified
        lbUbicacion.text="Ubicacion de contacto: \(arrayContactos[0].ubicacion)";
        lbUbicacion.frame=CGRect(x: 50, y:150, width: 300, height: 50)
        lbUbicacion.textColor = .black;
         self.view.addSubview(lbUbicacion)
        
        let lbParentesco = UILabel(frame: CGRect(x: 00, y:600, width: 400, height: 50))
        lbParentesco.textAlignment = .justified
        
        lbParentesco.text="Parentesco de contacto: \(arrayContactos[0].parentesco)";
        lbParentesco.frame=CGRect(x: 50, y:200, width: 300, height: 50)
        lbParentesco.textColor = .black;
         self.view.addSubview(lbParentesco)
        
        let lbEdad = UILabel(frame: CGRect(x: 00, y:600, width: 400, height: 50))
        lbEdad.textAlignment = .justified
        lbEdad.text="Edad de contacto: \(Helpers.init().CalcularEdad(arrayContactos[0].fechanacimiento))";
        lbEdad.frame=CGRect(x: 50, y:250, width: 300, height: 50)
        lbEdad.textColor = .black;
        self.view.addSubview(lbEdad)
        
        let lbCumple = UILabel(frame: CGRect(x: 00, y:600, width: 400, height: 50))
        lbCumple.textAlignment = .justified
        lbCumple.text="Dias restantes cumpleaños: \(String(Helpers.init().CalcularCumple(arrayContactos[0].fechanacimiento)))";
        lbCumple.frame=CGRect(x: 50, y:300, width: 300, height: 50)
        lbCumple.textColor = .black;
        self.view.addSubview(lbCumple)
        
        compartircumple(Helpers.init().CalcularCumple(arrayContactos[0].fechanacimiento));
        
        // Do any additional setup after loading the view.
    }
   
    func compartircumple(_ dias : Int) -> Void {
        if(dias >= 1 && dias <= 5 )
        {
            
            let button = UIButton()
            button.frame = CGRect(x: 85, y: 400, width: 200, height: 50)
            button.backgroundColor = UIColor.lightGray
            button.setTitle("Compartir Contacto ", for: .normal)
            button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
         
            
            button.layer.cornerRadius = 4;
            
            button.backgroundColor=UIColor.init(red: 0.2, green: 0.2, blue: 0.8, alpha: 1)
            
            self.view.addSubview(button)
            
        }
    }
    
    @objc func buttonAction(){
        let activityController = UIActivityViewController(activityItems:[NSLocalizedString("textCompartir", comment: "Se acerca el cumpleaños de \((datauser?.nombre)!)"), UIImage.init(named: "cumple.jpg")], applicationActivities: nil)
        present(activityController,animated: true,completion: nil)
        
        
        
   
        
        
        
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        print("la vista aparecerá")
//         print(idContact)
//    }
//    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        print(idContact)
//    }
//    
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        print("la vista desaparecerá")
//         print(idContact)
//    }
//    
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//        print("la vista desapareció")
//         print(idContact)
//    }
//    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
