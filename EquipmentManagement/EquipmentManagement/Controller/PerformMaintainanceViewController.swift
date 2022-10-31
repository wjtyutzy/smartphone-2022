//
//  PerformMaintainanceViewController.swift
//  EquipmentManagement
//
//  Created by laputer on 10/31/22.
//

import UIKit
import FirebaseDatabase

class PerformMaintainanceViewController: UIViewController {
    
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var txtNatureOfWork: UITextField!
    @IBOutlet weak var txtRectificationWork: UITextField!
    @IBOutlet weak var txtRemarks: UITextField!
    @IBOutlet weak var txtActivity: UITextField!
    
    var ref: DatabaseReference!
    
    //var serialNumber: String = "123456"
    var serialNumber: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitAction(_ sender: Any) {
        
        let date = transformToJSON(datePicker.date)
        let natureOfProblem = txtNatureOfWork.text!
        let rectificationWork = txtRectificationWork.text!
        let remarks = txtRemarks.text!
        let activity = txtActivity.text!
        
        guard let key = ref.child("Equipment/\(serialNumber)/MaintainanceHistory").childByAutoId().key else { return }
        
        let maintainance = ["date": date,
                            "NatureOfProblem": natureOfProblem,
                            "RectificationWork": rectificationWork,
                            "Remarks": remarks,
                            "Activity": activity] as [String : Any]
        let childUpdates = ["Equipment/\(serialNumber)/MaintainanceHistory/\(key)": maintainance]
        ref.updateChildValues(childUpdates)
        
        txtNatureOfWork.text = ""
        txtRectificationWork.text = ""
        txtRemarks.text = ""
        txtActivity.text = ""
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    
    open func transformToJSON(_ value: Date?) -> Double? {
        if let date = value {
            return Double(date.timeIntervalSince1970) * 1000.0
        }

        return nil
    }

}
