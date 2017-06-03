//
//  ViewController.swift
//  Pizza
//
//  Created by 10.13 on 28/4/17.
//  Copyright © 2017 xgubianas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet var seguir: UIButton!
    
    let list_tamanos = ["Chica", "Mediana", "Grande"]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) ->Int
    {
        return (list_tamanos.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        //let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel!.text = list_tamanos[indexPath.row]
        return(cell)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        seguir.isEnabled = true
        if let cell = tableView.cellForRow(at: indexPath)
        {
            let tamano: String = cell.textLabel?.text ?? ""
            UserDefaults.standard.set(tamano, forKey: "tamano")
            print (cell)
            //NSIndexPath *selectedIndexPath = [tableView .indexPathForSelectedRow]
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

