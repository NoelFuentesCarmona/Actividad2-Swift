//
//  ViewController.swift
//  Actividad2
//
//  Created by usuario on 1/8/19.
//  Copyright © 2019 gs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var rowselected : Int?
    var arrayContactos = ContactosPersiste.init().GetDataContactos()
  
    @IBOutlet weak var tblMisContactos: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tblMisContactos.delegate = self
        self.tblMisContactos.dataSource = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "controllermainsegue" { 
          print(tblMisContactos.indexPathForSelectedRow)
            
                    if let vcd = segue.destination as? ContactDetailsViewController{
                        vcd.idContact = rowselected
                    }
           
        }
    }


}




extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1 //arrayContactos.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Mis contactos"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayContactos.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "Celda", for: indexPath) as! DatosContactoTableViewCell
    
        var imgc =  UIImage(named: "contact.png");
        celda.imgContact.image = imgc
    celda.lbNombreContact.text=String(arrayContactos[indexPath.row].nombre);
        
        return celda
    }
    
    
  
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            rowselected = arrayContactos[indexPath.row].idPersona;
           self.performSegue(withIdentifier: "controllermainsegue", sender: nil)
        }
    
    
        
        
    

}
