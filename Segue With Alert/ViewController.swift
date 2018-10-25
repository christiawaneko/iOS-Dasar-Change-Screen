//
//  ViewController.swift
//  Segue With Alert
//
//  Created by Christiawan Eko Saputro on 10/10/18.
//  Copyright © 2018 Dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnNext(_ sender: Any) {
        
        if textName.text != "" {
            let storyBoard  = UIStoryboard(name: "Main", bundle: nil)
            let pindah      = storyBoard.instantiateViewController(withIdentifier: "dataScreen") as! DataViewController
            
            pindah.dataNama = textName.text
            
            show(pindah, sender: nil)
                       
            
        }else{
            showAlert(title: "Gagal", message: "Nama Tidak boleh kosong")
        }
        
    }
    
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let btnClose = UIAlertAction(title: "Close", style: .cancel, handler: nil)
        
        alert.addAction(btnClose)
        
        present(alert, animated: true, completion: nil)
        
    }
    
}

