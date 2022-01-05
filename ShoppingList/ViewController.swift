//
//  ViewController.swift
//  ShoppingList
//
//  Created by Grant Spraker on 1/5/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource
{
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        tableView.dataSource = self
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 3
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Celled", for: indexPath)
        cell.textLabel?.text = "Hello"
        return cell
    }
}

