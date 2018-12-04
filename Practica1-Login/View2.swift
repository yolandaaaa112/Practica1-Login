//
//  View2.swift
//  Practica1-Login
//
//  Created by Alan Olivares on 11/09/18.
//  Copyright © 2018 I104-21. All rights reserved.
//

import Foundation
import UIKit
class View2 : UIViewController {
    @IBOutlet var nom: UILabel!
    @IBOutlet var pass: UILabel!
    var contra: String = ""
    var nomm: String = ""
    
    override func viewDidLoad() {
        nom.text=nomm
        pass.text=contra
    }
}
