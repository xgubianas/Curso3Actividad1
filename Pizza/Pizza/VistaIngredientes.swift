//
//  VistaIngredientes.swift
//  Pizza
//
//  Created by 10.13 on 28/4/17.
//  Copyright © 2017 xgubianas. All rights reserved.
//

import UIKit

class VistaIngredientes: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let list_ingredientes = ["Jamon", "Pepperoni", "Pavo", "Salchicha", "Aceituna", "Cebollla", "Pimiento", "Pina", "Anchoa"]
    let limit = 5
    
    @IBOutlet var seguir: UIButton!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) ->Int
    {
        return (list_ingredientes.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_ingredientes", for: indexPath)
        //let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel!.text = list_ingredientes[indexPath.row]
        return(cell)
    }
    
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        if let sr = tableView.indexPathsForSelectedRows?.count
        {
            print (sr)
            print (limit)
            if tableView.indexPathsForSelectedRows?.count == limit
            {
                let alertController = UIAlertController(title: "Oops", message: "Hay un limite de 5 ingredientes", preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in }))
                present(alertController, animated: true, completion: nil)
                return nil
            }
        }
        
        return indexPath
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //print("selected  \(intervalNames[indexPath.row])")
        
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.isSelected {
                cell.accessoryType = .disclosureIndicator
            }
        }
        
        if let sr = tableView.indexPathsForSelectedRows {
            print("didDeselectRowAtIndexPath selected rows:\(sr)")
        }
        
        if let sr = tableView.indexPathsForSelectedRows?.count
        {
            if (sr >= 1)
            {
                seguir.isEnabled = true
            }
            else
            {
                seguir.isEnabled = false
            }
        }

        
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
        //print("deselected  \(intervalNames[indexPath.row])")
        
        if let cell = tableView.cellForRow(at: indexPath as IndexPath) {
            cell.accessoryType = .none
        }
        
        if let sr = tableView.indexPathsForSelectedRows {
            print("didDeselectRowAtIndexPath selected rows:\(sr)")
        }
        if let sr = tableView.indexPathsForSelectedRows?.count
        {
            if (sr >= 1)
            {
                seguir.isEnabled = true
            }
            else
            {
                seguir.isEnabled = false
            }
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
