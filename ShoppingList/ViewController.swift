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
    
    @IBOutlet weak var newItem: UITextField!
    
    var items : [Item] = []

    override func viewDidLoad()
    {
        super.viewDidLoad()
        tableView.dataSource = self
        
        let item1 = Item(name:"Milk")
        let item2 = Item(name:"Eggs")
        items = [item1,item2]
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return items.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellId", for: indexPath)
        let currentItem = items[indexPath.row]
        cell.textLabel?.text = currentItem.name
        return cell
    }
    
    @IBAction func whenAddItemButtonPressed(_ sender: Any)
    {
        if let newItemName = newItem.text
        {
            let newItem = Item(name: newItemName)
            items.append(newItem)
            tableView.reloadData()
        }
    }
    
    
}

