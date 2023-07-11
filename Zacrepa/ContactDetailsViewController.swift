//
//  ContactDetailsViewController.swift
//  Zacrepa
//
//  Created by Yuri Luka on 10/07/2023.
//

import UIKit

class ContactDetailsViewController: UIViewController {

    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneNumberLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName
        emailLabel.text = "Email: \(person.email)"
        phoneNumberLabel.text = "Phone: \(person.phone)"
    }
}
