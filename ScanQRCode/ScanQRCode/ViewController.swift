//
//  ViewController.swift
//  ScanQRCode
//
//  Created by laputer on 10/1/22.
//

import UIKit
import QRCodeScanner

class ViewController: UIViewController, QRCodeScanViewControllerDelegate {
   
    
    
    
    @IBOutlet weak var lblScannedQRCode: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func scan(_ sender: Any) {
        scanQRCode()
    }
    /// Start the QR code scan
    func scanQRCode() {
        
        // Create an instance of QRCodeScanViewController
        let viewController = QRCodeScanViewController.create()
        
        // Set itself as delegate
        viewController.delegate = self
        
        // Present the view controller
        self.present(viewController, animated: true)
    }
    
    
    func qrCodeScanViewController(_ viewController: QRCodeScanViewController, didScanQRCode value: String) {
        
        viewController.dismiss(animated: true){
            self.lblScannedQRCode.text = value
        }
        
    }
    
    
  

}

