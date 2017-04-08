//
//  ViewController.swift
//  CalculadoraIMC2
//
//  Created by 10.13 on 6/4/17.
//  Copyright © 2017 xgubianas. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var peso: UITextField!
    @IBOutlet weak var estatura: UITextField!
    
    @IBOutlet weak var scroll: UIScrollView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        peso.delegate = self
        estatura.delegate = self
    }
    
    @IBAction func textFieldDidBeginEditing(_ textField: UITextField) {
        var punto : CGPoint
        punto = CGPoint(x: 0, y: textField.frame.origin.y-50)
        self.scroll.setContentOffset(punto, animated: true)
        
    }
    
    @IBAction func textFieldDidEndEditing(_ textField: UITextField) {
        self.scroll.setContentOffset(CGPoint.zero, animated: true)
    }

    @IBAction func backgroundTap(sender:UIControl)
    {
        peso.resignFirstResponder()
        estatura.resignFirstResponder()
    }
    
    @IBAction func textFieldDoneEditing(sender:UITextField)
    {
        sender.resignFirstResponder() // Desapareixer el teclat
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calcularIMC(_ sender: Any)
    {
        var IMC:Double
        let pesoLocal:Double?
        pesoLocal=Double(self.peso.text!)!
        let estaturaLocal:Double=Double(self.estatura.text!)!
        IMC=pesoLocal!/(estaturaLocal*estaturaLocal)
        print("Resultado:\(IMC)")
    }

}

