//
//  VistaQueso.swift
//  Pizza
//
//  Created by 10.13 on 28/4/17.
//  Copyright © 2017 xgubianas. All rights reserved.
//

import UIKit

class VistaQueso: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let list_queso = ["Mozzarella", "Cheddar", "Parmesano","Sin Queso"]
    
    @IBOutlet var seguir: UIButton!
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) ->Int
    {
        return (list_queso.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_queso", for: indexPath)
        //let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel!.text = list_queso[indexPath.row]
        return(cell)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        seguir.isEnabled = true
        if let cell = tableView.cellForRow(at: indexPath)
        {
            let queso: String = cell.textLabel?.text ?? ""
            UserDefaults.standard.set(queso, forKey: "queso")
        }
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
