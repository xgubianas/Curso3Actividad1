//
//  ViewController.swift
//  Hamburguesas
//
//  Created by 10.13 on 3/4/17.
//  Copyright © 2017 xgubianas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let pais = ColeccionDePaises()
    let hamburguesa = ColeccionDeHamburguesa()
    let color = ColeccionDeColores()
    
    @IBOutlet weak var lbl_pais: UILabel!
    @IBOutlet weak var lbl_hamburguesa: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func cambiarDatos() {
        
        lbl_pais.text = pais.obtenPais()
        lbl_hamburguesa.text = hamburguesa.obtenHamburguesa()
        let colorAleatorio = color.obtenColor()
        view.backgroundColor = colorAleatorio
        view.tintColor = colorAleatorio
    }
}

