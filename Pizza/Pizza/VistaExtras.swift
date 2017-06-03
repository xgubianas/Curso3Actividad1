//
//  VistaExtras.swift
//  Pizza
//
//  Created by 10.13 on 29/4/17.
//  Copyright © 2017 xgubianas. All rights reserved.
//

import UIKit

class VistaExtras: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let list_extras = ["Oregano", "Base con Queso", "Base con Tomate"]
    
    @IBOutlet var seguir: UIButton!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) ->Int
    {
        return (list_extras.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_extras", for: indexPath)
        //let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel!.text = list_extras[indexPath.row]
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
            let extras: String = cell.textLabel?.text ?? ""
            UserDefaults.standard.set(extras, forKey: "extras")
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
