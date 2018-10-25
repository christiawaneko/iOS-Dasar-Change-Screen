//
//  DataViewController.swift
//  Segue With Alert
//
//  Created by Christiawan Eko Saputro on 10/10/18.
//  Copyright © 2018 Dev. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {

    @IBOutlet weak var txtNama: UILabel!
    var dataNama : String?
    override func viewDidLoad() {
        super.viewDidLoad()

        txtNama.text = dataNama
    }
 
}
