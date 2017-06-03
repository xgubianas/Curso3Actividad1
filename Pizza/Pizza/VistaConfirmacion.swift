//
//  VistaConfirmacion.swift
//  Pizza
//
//  Created by 10.13 on 28/4/17.
//  Copyright © 2017 xgubianas. All rights reserved.
//

import UIKit

class VistaConfirmacion: UIViewController {

    @IBOutlet var tamano: UILabel!
    @IBOutlet var masa: UILabel!
    @IBOutlet var queso: UILabel!
    @IBOutlet var extras: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let savedValue = UserDefaults.standard.string(forKey: "tamano"){
            tamano.text = savedValue
        }
        if let savedValue = UserDefaults.standard.string(forKey: "masa"){
            masa.text = savedValue
        }

        if let savedValue = UserDefaults.standard.string(forKey: "queso"){
            queso.text = savedValue
        }

        if let savedValue = UserDefaults.standard.string(forKey: "extras"){
            extras.text = savedValue
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
