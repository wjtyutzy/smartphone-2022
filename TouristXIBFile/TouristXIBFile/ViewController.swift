//
//  ViewController.swift
//  TouristXIBFile
//
//  Created by laputer on 9/28/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let cityNames = ["New York", "Washington DC", "San Francisco", "Los Angeles", "London", "Paris", "Sydney"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cityNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let cell = Bundle.main.loadNibNamed("TouristCellTableViewCell", owner: self)?.first as! TouristCellTableViewCell
        
        cell.imgCity.image = UIImage(named: cityNames[indexPath.row])
        cell.lblCity.text = cityNames[indexPath.row]
        
        return cell
    }

}

