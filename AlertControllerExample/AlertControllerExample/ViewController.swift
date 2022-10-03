//
//  ViewController.swift
//  AlertControllerExample
//
//  Created by laputer on 10/1/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblAlert: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlert(_ sender: Any) {
        
        var txtField: UITextField?
        let alertController = UIAlertController(title: "Alert Controller Example", message: "Some Message", preferredStyle:  .alert
        )
        
        let OKButton = UIAlertAction(title: "OK", style: .default) { action in
            print("OK Button Pressed")
            
            self.lblAlert.text = txtField?.text
        }
        
        
        
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel) { action in
            print("Cancel Button Pressed")
        }
        
        alertController.addAction(OKButton)
        
        alertController.addTextField { lblTextField in
            self.txtField = lblTextField
            lblTextField.placeholder = "Type something here"
            
        }
        
        self.present(alertController, animated: true)
    }
    
}

