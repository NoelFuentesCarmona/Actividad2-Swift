//
//  ContactosPersiste.swift
//  Actividad2
//
//  Created by usuario on 1/8/19.
//  Copyright © 2019 gs. All rights reserved.
//

import Foundation


class ContactosPersiste{
   
    func GetDataContactos(_ contactos:[Int] = [0])->[Contacto]{
        let Contacto1=Contacto.init(idpersona: 1, nombre: "Jose Alberto", fechanacimiento: "19770115",  parentesco: "Amigo", ubicacion:  "Calle Corregidora")
        let Contacto2=Contacto.init(idpersona: 2, nombre: "Francisco Nolasco", fechanacimiento: "19870116",  parentesco: "Amigo", ubicacion: "San Fernando")
        let Contacto3=Contacto.init(idpersona: 3, nombre: "Berenice Tla", fechanacimiento: "19730101", parentesco: "Amiga", ubicacion: "Calle Emiliano")
        let Contacto4=Contacto.init(idpersona: 4, nombre: "Arturo Pons", fechanacimiento: "19731006", parentesco: "Amigo", ubicacion: "Calle Corregidora")
        let Contacto5=Contacto.init(idpersona: 5, nombre: "Cesar Ivan", fechanacimiento: "19730113", parentesco: "Amigo", ubicacion: "Calle Nezahua")
        
        var arrayContactosBD = [Contacto]();
        arrayContactosBD.append(Contacto1)
        arrayContactosBD.append(Contacto2)
        arrayContactosBD.append(Contacto3)
        arrayContactosBD.append(Contacto4)
        arrayContactosBD.append(Contacto5)
        
  
        
        var arrayContactos = [Contacto]();
        for idc in contactos{
            if (idc != 0){
                for contacto in arrayContactosBD
                {
                    if idc==contacto.idPersona {
                        arrayContactos.append(contacto)
                    }
                }}
            else{
                arrayContactos = arrayContactosBD
            }
        }
        
        return arrayContactos
    }
    
    

}
