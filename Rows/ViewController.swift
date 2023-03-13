//
//  ViewController.swift
//  Rows
//
//  Created by Pat Garner on 3/13/23.
//

import UIKit

class ViewController: UIViewController {    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Table.createTable(with: Category.categories,
                          in: view)
    }    
}

