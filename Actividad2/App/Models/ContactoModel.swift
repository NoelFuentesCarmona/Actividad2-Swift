//
//  Contacto.swift
//  Actividad2
//
//  Created by usuario on 1/8/19.
//  Copyright © 2019 gs. All rights reserved.
//

import Foundation

class Contacto: Persona {
    var parentesco: String
    var ubicacion: String
    init( idpersona: Int , nombre: String,fechanacimiento: String,  parentesco:String, ubicacion:String) {
        self.parentesco = parentesco
        self.ubicacion = ubicacion
        super.init(idpersona: idpersona, nombre: nombre, fechanacimiento: fechanacimiento)
    }
}
