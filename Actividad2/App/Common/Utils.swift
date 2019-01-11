//
//  Utils.swift
//  Actividad2
//
//  Created by usuario on 1/8/19.
//  Copyright © 2019 gs. All rights reserved.
//

import Foundation

class Helpers{  
    func CalcularEdad(_ dateString: String) -> String{
        let dateStringFormatter=DateFormatter();
        dateStringFormatter.dateFormat="YYYYMMdd";
        let dateFromString=dateStringFormatter.date(from: dateString);
        var edad=Calendar.current.dateComponents([.year], from: dateFromString!,to:Date());
        return String(edad.year!);
    }
    
    func CalcularCumple(_ dateString: String) -> Int{
        let dateStringFormatter=DateFormatter();
        dateStringFormatter.dateFormat="YYYYMMdd";
        
        var dateFromString=dateStringFormatter.date(from: dateString);
  
        var component = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: dateFromString!)
        component.year = Calendar.current.component(.year, from: Date())
        var alterdate =   Calendar.current.date(from: component)
//      var newdate =  Calendar.current.date(bySetting: .year, value: Date(), of: dateFromString!)
        
        var edad=Calendar.current.dateComponents([.day], from: Date(),to:alterdate!);
       
        return Int(edad.day!);
    }
}
