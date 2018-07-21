//
//  InitialTableViewController.swift
//  Todoeey
//
//  Created by Cavin Albert Belga on 7/21/18.
//  Copyright © 2018 HardRocket. All rights reserved.
//

import UIKit

class InitialTableViewController: UITableViewController {
  
  let itemArray = ["Shit", "Eat", "Sleep"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

  //MARK: - TableDataSource Methods
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return itemArray.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
    cell.textLabel?.text = itemArray[indexPath.row]
    
    return cell
  }
  
  //MARK - TableViewDelagate Method
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    //print(itemArray[indexPath.row])
    
    if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
      tableView.cellForRow(at: indexPath)?.accessoryType = .none
    } else {
      tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
    }
    
    tableView.deselectRow(at: indexPath, animated: true)
  }
  
  
  

  
}
