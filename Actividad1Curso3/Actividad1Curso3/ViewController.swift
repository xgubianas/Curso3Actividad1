//
//  ViewController.swift
//  Actividad1Curso3
//
//  Created by 10.13 on 3/6/17.
//  Copyright © 2017 xgubianas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var labelISBN: UITextField!
    
    @IBOutlet var textResult: UITextView!
    
    @IBAction func Buscar(_ sender: Any)
    {
        buscarISBN(isbn: labelISBN.text!)
    }
    
    @IBAction func Clear(_ sender: Any)
    {
        labelISBN.text = ""
    }

    func buscarISBN(isbn: String)
    {
        var urls = "https://openlibrary.org/api/books?jscmd=data&format=json&bibkeys=ISBN:"
        urls = urls + isbn
        let url = NSURL(string: urls)
        let session = URLSession.shared
        let task = session.dataTask(with: url! as URL) { datos, response, error in
            if error != nil
            {
                print(error ?? "err")
            }
            else
            {
                let text = NSString(data: datos!, encoding: String.Encoding.utf8.rawValue)
                print (text!)
                DispatchQueue.main.async()
                {
                    self.textResult.text = text! as String
                }
            }
        }
        task.resume()
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

