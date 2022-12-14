//
//  DashboardViewController.swift
//  EquipmentManagement
//
//  Created by laputer on 10/28/22.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase

class DashboardViewController: UIViewController {

    
    @IBOutlet weak var txtSerialNumber: UITextField!
    
    @IBOutlet weak var lblEquipmentName: UILabel!
    @IBOutlet weak var lblMakeName: UILabel!
    @IBOutlet weak var lblModelName: UILabel!
    @IBOutlet weak var lblRatingName: UILabel!
    
    var ref: DatabaseReference!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        // Do any additional setup after loading the view.
    }
    
//    @IBAction func logoutAction(_ sender: Any) {
//
//        let keychain = KeyChainService().keyChain
//        keychain.clear()
//
//        do {
//            try Auth.auth().signOut()
//        }
//        catch {
//            print("Unable to logout")
//        }
//
//        self.navigationController?.popViewController(animated: true)
//
//    }
    
    
    @IBAction func scanQRCodeAction(_ sender: Any) {
    }
    
    
    @IBAction func submitAction(_ sender: Any) {
        guard let serialNumber = txtSerialNumber.text else {return}

        if serialNumber == "" {
            return
        }
        
        ref.child("Equipment/\(serialNumber)").getData(completion:  { error, snapshot in
            guard error == nil else {
                print(error!.localizedDescription)
                return;
            }
        
            //print(snapshot)
            
            //guard let snapshot = snapshot else {return}
            //guard let snapshot = snapshot else {return}
            
            guard let value = snapshot.value as? NSDictionary else {return}
            
            let equipment = EquipmentModel()
            
            equipment.equipment = value["Equipment"] as? String ?? ""
            equipment.make = value["Make"] as? String ?? ""
            equipment.model = value["Model"] as? String ?? ""
            equipment.rating = value["Rating"] as? String ?? ""
            //let user = User(username: username)
            
//            print(equipment)
//            print(make)
//            print(model)
//            print(rating)
            
            self.lblEquipmentName.text = equipment.equipment
            self.lblMakeName.text = equipment.make
            self.lblModelName.text = equipment.model
            self.lblRatingName.text = equipment.rating
            
            //let userName = snapshot.value as? String ?? "Unknown";
        });
    }
    
    @IBAction func viewHistoryAction(_ sender: Any) {
    }
    
    @IBAction func performMaintainanceAction(_ sender: Any) {
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueMaintainance" {
            let secondVC = segue.destination as! PerformMaintainanceViewController
            guard let serialNumber = txtSerialNumber.text else {return}
            secondVC.serialNumber = serialNumber
        }
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
