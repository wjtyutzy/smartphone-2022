//
//  ViewController.swift
//  PromiseExample
//
//  Created by laputer on 10/8/22.
//

import UIKit
import Alamofire
import SwiftyJSON
import SwiftSpinner
import PromiseKit

class ViewController: UIViewController {

    @IBOutlet weak var txtSymbol: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getStockValue(_ sender: Any) {
        let apiKey = "7da83da8656593f9d11caa2c1cb6377a"

        var url = "https://financialmodelingprep.com/api/v3/quote/"
        url += txtSymbol.text!
        url += "?apikey="
        url += apiKey
        
        getStockQuote(url: url)
        .done { CompanyQuote in
            print(CompanyQuote)
        }
        .catch { error in
            print(error)
        }
        
        
        /*
        SwiftSpinner.show("Getting Stock Values")
                
        AF.request(url).responseJSON { responseData in
            print(responseData)
                    
            SwiftSpinner.hide()
                    
            if responseData.error != nil {
                print(responseData.error!)
                return
            }
                    
            guard let stock = JSON(responseData.data!).array?.first else { return }
                    
            print(stock["name"].stringValue)
            print(stock["price"].stringValue)

        }
         */
    }
    
    func getStockQuote(url : String) -> Promise<CompanyQuote> {
        
        return Promise<CompanyQuote> { seal -> Void in
            AF.request(url).responseJSON { responseData in
                print(responseData)
                        
                //SwiftSpinner.hide()
                        
                if responseData.error != nil {
                    seal.reject(responseData.error!)
                }
                        
                guard let stock = JSON(responseData.data!).array?.first else { return }
                
                let quote = CompanyQuote()
                quote.symbol = stock["symbol"].stringValue
                quote.name = stock["name"].stringValue
                quote.price = stock["price"].floatValue
                
                seal.fulfill(quote)
//                print(stock["name"].stringValue)
//                print(stock["price"].stringValue)
                
            }
        }
    }
    
}

