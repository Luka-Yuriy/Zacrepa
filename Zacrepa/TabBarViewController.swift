//
//  TabBarViewController.swift
//  Zacrepa
//
//  Created by Yuri Luka on 10/07/2023.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()

    }
    
    private func setupViewControllers() {
        guard let contactVC = viewControllers?.first as? ContactListTableViewController else { return }
        guard let sectionVC = viewControllers?.last as? SectionTableViewController else { return }
        
        let person = Person.getContactList()
        contactVC.persons = person
        sectionVC.persons = person
    }

}
