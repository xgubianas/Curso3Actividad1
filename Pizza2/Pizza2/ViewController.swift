//
//  ViewController.swift
//  Pizza2
//
//  Created by 10.13 on 29/4/17.
//  Copyright © 2017 xgubianas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{

    let list_tamanos = ["Chica", "Mediana", "Grande"]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) ->Int
    {
        return (list_tamanos.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel!.text = list_tamanos[indexPath.row]
        return(cell)
        
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

