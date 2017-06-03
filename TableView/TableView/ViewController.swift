//
//  ViewController.swift
//  TableView
//
//  Created by 10.13 on 16/5/17.
//  Copyright © 2017 xgubianas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    @IBOutlet var tableView: UITableView!
    
    var names: [String] = []
    var dates: [String] = []

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let url=URL(string:"http://cec-info.cat/app/actes.php")
        
        do
        {
            let allContactsData = try Data(contentsOf: url!)
            let allContacts = try JSONSerialization.jsonObject(with: allContactsData, options: JSONSerialization.ReadingOptions.allowFragments) as! [String : AnyObject]
            if let arrJSON = allContacts["Data"]
            {
                for index in 0...arrJSON.count-1
                {
                    let aObject = arrJSON[index] as! [String : AnyObject]
                    names.append(aObject["Nom"] as! String)
                    dates.append(aObject["Data"] as! String)
                }
            }
            //print(names)
            //print(dates)
            
            self.tableView.reloadData()
        }
        catch
        {
            
        }
        
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.names.count;
    }
    
    @objc func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        //print("You selected name : "+names[indexPath.row])
        
        
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ActesTableViewCell
        
        cell.data.text = self.dates[indexPath.row]
        cell.nom.text = self.names[indexPath.row]
        
        return cell
        
        /*
        if !(cell != nil) {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        }
        cell?.textLabel?.text = self.dates[indexPath.row] + " " + self.names[indexPath.row]
        cell?.detailTextLabel?.text = self.dates[indexPath.row]
        return cell!
         */
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

