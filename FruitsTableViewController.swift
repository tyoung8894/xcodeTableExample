//
//  FruitsTableViewController.swift
//  TableExample
//
//  Created by Tyler Young on 10/13/16.
//  Copyright © 2016 Tyler Young. All rights reserved.
//

import UIKit

class FruitTableViewCell: UITableViewCell {
    @IBOutlet weak var fruitImageVIew: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    
}

class FruitsTableViewController: UITableViewController {
    
    var fruits = ["Apple", "Apricot", "Banana", "Blueberry", "Cantaloupe", "Cherry",
                  "Clementine", "Coconut", "Cranberry", "Fig", "Grape", "Grapefruit",
                  "Kiwi fruit", "Lemon", "Lime", "Lychee", "Mandarine", "Mango",
                  "Melon", "Nectarine", "Olive", "Orange", "Papaya", "Peach",
                  "Pear", "Pineapple", "Raspberry", "Strawberry"]

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath) as! FruitTableViewCell
        let fruitName = fruits[indexPath.row]
        cell.label?.text = fruitName 
        //cell.textLabel?.text = fruitName
        cell.fruitImageVIew?.image = UIImage(named: fruitName)
        
        //cell.detailTextLabel?.text = "Delicious!"
       //cell.imageView?.image = UIImage(named: fruitName)
        
        
        //cell.textLabel?.text = fruits[indexPath.row]
        return cell
    }
    
    
    
    
    
/*    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        cell.textLabel?.text = "Section \(indexPath.section) Row \(indexPath.row)"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }
   
}
 */

}
