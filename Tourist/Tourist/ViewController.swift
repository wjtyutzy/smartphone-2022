//
//  ViewController.swift
//  Tourist
//
//  Created by laputer on 9/28/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    let cityNames = ["New York", "Washington DC", "San Francisco", "Las Angeles", "London", "Paris", "Sydney", "Amsterdam", "Venice"]
    
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cityNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CityTableViewCell
        cell.imgCity.image = UIImage(named: cityNames[indexPath.row])
        cell.lblCity.text = cityNames[indexPath.row]
        return cell
    }

}

