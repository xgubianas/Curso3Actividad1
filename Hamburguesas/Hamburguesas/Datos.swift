//
//  Datos.swift
//  Hamburguesas
//
//  Created by 10.13 on 3/4/17.
//  Copyright © 2017 xgubianas. All rights reserved.
//

import Foundation
import UIKit

class ColeccionDePaises {
    
    let paises = ["Noruega", "Francia", "Albania", "Grecia", "Italia", "Alemania", "Holanda", "Belgica", "Andorra", "Portugal", "Suiza", "Austria", "Finlandia", "Suecia", "Inglaterra", "Irlanda", "Islandia", "Luxemburgo", "San Marino"]
    
    func obtenPais() -> String {
        let posicionPais = Int (arc4random()) % paises.count
        return paises[posicionPais]
    }
}

class ColeccionDeHamburguesa {
    
    let hamburguesas = ["Big Mac", "Big Pollo", "Super Big", "Double Big", "Dobule Fish", "Triple Big Mac", "Con Queso", "Big Extra", "Super Big", "McRoyal", "Mc Extrem", "McRoll", "Burger BBQ", "Double Cheese", "Big Chicken", "Double Onion", "Quarto de Libra", "Mc Gran Extrem", "Mc Cajun", "CBO"]
    
    func obtenHamburguesa() -> String {
        let posicionHamburguesa = Int (arc4random()) % hamburguesas.count
        return hamburguesas[posicionHamburguesa]
    }
}

struct ColeccionDeColores {
    let colores = [ UIColor(red:210/255.0, green: 90/255.0, blue: 45/255.0, alpha: 1),
                    
                    UIColor(red:40/255.0, green: 170/255.0, blue: 45/255.0, alpha: 1),
                    
                    UIColor(red:3/255.0, green: 180/255.0, blue: 90/255.0, alpha: 1),
                    
                    UIColor(red:210/255.0, green: 190/255.0, blue: 5/255.0, alpha: 1),
                    
                    UIColor(red:120/255.0, green: 120/255.0, blue: 50/255.0, alpha: 1),
                    
                    UIColor(red:130/255.0, green: 80/255.0, blue: 90/255.0, alpha: 1),
                    
                    UIColor(red:130/255.0, green: 130/255.0, blue: 130/255.0, alpha: 1),
                    
                    UIColor(red:3/255.0, green: 50/255.0, blue: 90/255.0, alpha: 1)]
    
    func obtenColor() ->UIColor{
        let posicion = Int (arc4random()) % colores.count
        return colores[posicion]
    }
}
