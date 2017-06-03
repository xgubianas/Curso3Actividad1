//
//  InterfaceController.swift
//  CalcIMCAW WatchKit Extension
//
//  Created by 10.13 on 5/5/17.
//  Copyright © 2017 xgubianas. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    var pesoActual:Float=1
    var estaturaActual:Float=1
    
    @IBOutlet var valorPeso: WKInterfaceLabel!
    @IBOutlet var valorEstatura: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
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

    @IBAction func accionCalcular() {
        let resultado = calcularIMC(p: pesoActual, e: estaturaActual)
        let valorContexto = Valor(d:"Peso Normal", v:resultado)
        pushController(withName: "IdentificadorValor", context: valorContexto)
        print (resultado)
    }
    
    func calcularIMC(p:Float, e:Float)->Float
    {
        let IMC=(p/(e*e))
        return IMC
    }
    
    @IBAction func nuevoValorPeso(_ value: Float) {
        pesoActual = value
        valorPeso.setText(String(pesoActual))
    }
    
    @IBAction func nuevoValorEstatura(_ value: Float) {
        estaturaActual = value
        valorEstatura.setText(String(estaturaActual))
    }
}
