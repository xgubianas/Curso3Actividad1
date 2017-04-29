//
//  ViewController.swift
//  CalculadoraIMC
//
//  Created by 10.13 on 26/4/17.
//  Copyright © 2017 xgubianas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var peso: UITextField!
    @IBOutlet weak var estatura: UITextField!
    @IBOutlet weak var scroll: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //peso.delegate = self
        //estatura.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultado = imc()
        let sigVista  = segue.destination as! VistaResultados
        sigVista.indiceIM = resultado
    }

    /*@IBAction func calcularIMC(_ sender: Any) {
        imc()
    }*/
    
    func imc()->Double
    {
        var IMC:Double
        let pesoLocal:Double?
        pesoLocal = Double(self.peso.text!)!
        let estaturaLocal:Double = Double(self.estatura.text!)!
        IMC = pesoLocal!/(estaturaLocal*estaturaLocal)
        print ("Resultado:\(IMC)")
        return IMC
    }

}

