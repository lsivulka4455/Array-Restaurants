//
//  ViewController.swift
//  Array - Restaurants
//
//  Created by user166485 on 2/19/21.
//  Copyright © 2021 SIVULKA. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var restaurants = ["Buffalo Wild Wings", "Chick Fil A", "Culvers", "Portillos", "McDonalds", "Chipotle"]
    var meals = ["BBQ", "Nuggets", "Cheese Burger", "Hot Dog", "Big Mac", "Burrito Bowl"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
//telling the computer how many rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }

    //telling what data goes into each row
    func tableView(_ tableView:  UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell")
        cell?.textLabel?.text = restaurants[indexPath.row]
        cell?.backgroundColor = UIColor.red
        cell?.textLabel?.textColor = UIColor.blue
        cell?.tintColor = UIColor.green
        cell?.textLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        cell?.detailTextLabel?.text = meals[indexPath.row]
        cell?.detailTextLabel?.textColor = UIColor.green
        cell?.detailTextLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        cell?.imageView?.image = UIImage(named: "aaron-rodgers-1040x572")
        return cell!
        
    }
    
        
        
    
    
    
}

