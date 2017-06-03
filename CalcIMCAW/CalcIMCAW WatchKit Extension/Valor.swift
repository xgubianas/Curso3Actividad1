//
//  Valor.swift
//  CalcIMCAW
//
//  Created by 10.13 on 6/5/17.
//  Copyright © 2017 xgubianas. All rights reserved.
//

import WatchKit

class Valor: NSObject {
    
    var descripcion:String=""
    var valorIMC:Float=0
    
    init(d:String, v:Float)
    {
        descripcion = d
        valorIMC    = v
    }

}
