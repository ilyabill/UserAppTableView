//
//  DetailUserViewController.swift
//  UserAppTableView
//
//  Created by ILYA BILARUS on 29.12.2021.
//

import UIKit

class UserInfoViewController: UIViewController {

    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fullNameLabel.text = person.fullname
        phoneLabel.text = person.phone
        emailLabel.text = person.email
        
    }

}
