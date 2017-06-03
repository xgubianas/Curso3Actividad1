//
//  VistaMasa.swift
//  Pizza
//
//  Created by 10.13 on 28/4/17.
//  Copyright © 2017 xgubianas. All rights reserved.
//

import UIKit

class VistaMasa: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
        let list_masa = ["Delgada", "Crujiente", "Gruesa"]
        
        @IBOutlet var seguir: UIButton!
        public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) ->Int
        {
            return (list_masa.count)
        }
        
        public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell_masa", for: indexPath)
            //let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
            cell.textLabel!.text = list_masa[indexPath.row]
            return(cell)
        }
    
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let fila = tableView.indexPathForSelectedRow
            print(fila ?? 0)
            seguir.isEnabled = true
            if let cell = tableView.cellForRow(at: indexPath)
            {
                let masa: String = cell.textLabel?.text ?? ""
                UserDefaults.standard.set(masa, forKey: "masa")
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
