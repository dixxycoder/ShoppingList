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
    
    var Item = items
    var items = [" "]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        tableView.dataSource = self
        
        let item1 = Item(name:"Milk")
        let item2 = Item(name:"Eggs")
        items = [item1,item2]
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

