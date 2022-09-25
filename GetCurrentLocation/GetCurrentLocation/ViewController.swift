//
//  ViewController.swift
//  GetCurrentLocation
//
//  Created by laputer on 9/24/22.
//

// 1.Add the privaty strings to info.plist
//2. Set location to whereve you want on the simulater
//3. Import CoreLocation
//4. Conform to CLLocationManagerDelegate
//5. Add a locationManager to the code let locationManager = CLLocationManager()

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        //locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        
        
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        
        let lat = location.coordinate.latitude
        let lng = location.coordinate.longitude
        
        print(lat)
        print(lng)
        
    }
    
    
    @IBAction func getLocation(_ sender: Any) {
        
        locationManager.requestLocation()
        
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
    
}

