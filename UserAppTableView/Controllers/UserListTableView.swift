//
//  UserListTableView.swift
//  UserAppTableView
//
//  Created by ILYA BILARUS on 29.12.2021.
//

import UIKit

class UserListTableView: UITableViewController {

    var persons: [Person]!
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return persons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personName", for: indexPath)

        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.fullname
        
        cell.contentConfiguration = content

        return cell
    }

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let person = persons[indexPath.row]
        performSegue(withIdentifier: "showDetails", sender: person)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userInfoVC = segue.destination as? UserInfoViewController else { return }
        userInfoVC.person = sender as? Person
    }
  
}
