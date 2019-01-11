//
//  PersonaModel.swift
//  Actividad2
//
//  Created by usuario on 1/8/19.
//  Copyright © 2019 gs. All rights reserved.
//

import Foundation


class Persona {
    var idPersona: Int
    var fechanacimiento: String
    var nombre: String
    
    
    init(idpersona: Int, nombre: String,fechanacimiento: String) {
        self.idPersona=idpersona
        self.fechanacimiento = fechanacimiento;
        self.nombre=nombre;
        
    }
    
    
}

