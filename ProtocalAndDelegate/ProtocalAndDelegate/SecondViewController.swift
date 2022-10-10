//
//  SecondViewController.swift
//  ProtocalAndDelegate
//
//  Created by laputer on 10/8/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    
    var sendNameDelegate: SendNameDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func setName(_ sender: Any) {
        
        guard let name = txtName.text else {return}
        
        sendNameDelegate?.sendName(name: name)
        
        self.navigationController?.popViewController(animated: true)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
