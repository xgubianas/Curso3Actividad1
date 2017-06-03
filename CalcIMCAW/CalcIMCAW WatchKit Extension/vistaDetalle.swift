//
//  vistaDetalle.swift
//  CalcIMCAW
//
//  Created by 10.13 on 6/5/17.
//  Copyright © 2017 xgubianas. All rights reserved.
//

import WatchKit
import Foundation


class vistaDetalle: WKInterfaceController {

    @IBOutlet var etiquetaResultado: WKInterfaceLabel!
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        let c=context as! Valor
        etiquetaResultado.setText(String(c.valorIMC))
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
