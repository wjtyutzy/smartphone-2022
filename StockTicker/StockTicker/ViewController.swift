//
//  ViewController.swift
//  StockTicker
//
//  Created by laputer on 10/1/22.
//

import UIKit
import Alamofire
import SwiftyJSON
import SwiftSpinner

class ViewController: UIViewController {

    @IBOutlet weak var txtStockSymbol: UITextField!
    
    
    @IBOutlet weak var lblStock: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func getStockPrice(_ sender: Any) {
        
        let apiKey = "7da83da8656593f9d11caa2c1cb6377a"
        
        var url = "https://financialmodelingprep.com/api/v3/quote/"
        url += txtStockSymbol.text!
        url += "?apiKey="
        url += apiKey
        
        url = "https://financialmodelingprep.com/api/v3/quote/AAPL?apikey=" + apiKey
        SwiftSpinner.show("Getting Stock Values")
        
        AF.request(url).responseJSON { responseData in
            print(responseData)
            
            SwiftSpinner.hide()
            
            if responseData.error != nil {
                print(responseData.error!)
                return
            }
            
            guard let stock = JSON(responseData.data!).array?.first else { return }
            //print(stock)
            print(stock["name"].stringValue)
            print(stock["price"].stringValue)
            
        }
        
        
        
        //https://financialmodelingprep.com/api/v3/income-statement/AAPL?limit=120&apikey=7da83da8656593f9d11caa2c1cb6377a
        
//        AF.request("https://httpbin.org/get").response {
//             response in
//            debugPrint(response)
//        }
        
    }
}

