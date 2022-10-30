//
//  DashboardViewController.swift
//  EquipmentManagement
//
//  Created by laputer on 10/28/22.
//

import UIKit
import FirebaseAuth

class DashboardViewController: UIViewController {

    
    @IBOutlet weak var txtSerialNumber: UITextField!
    
    @IBOutlet weak var lblEquipmentName: UIStackView!
    
    @IBOutlet weak var lblModelName: UILabel!
    
    @IBOutlet weak var lblMakeName: UILabel!
    
    @IBOutlet weak var lblRatingName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutAction(_ sender: Any) {
        
        let keychain = KeyChainService().keyChain
        keychain.clear()
        
        do {
            try Auth.auth().signOut()
        }
        catch {
            print("Unable to logout")
        }
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func scanQRCodeAction(_ sender: Any) {
    }
    
    
    @IBAction func submitAction(_ sender: Any) {
    }
    
    @IBAction func viewHistoryAction(_ sender: Any) {
    }
    
    
    @IBAction func performMaintainanceAction(_ sender: Any) {
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
