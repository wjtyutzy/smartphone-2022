//
//  AppDelegate.swift
//  BasicTableViewController
//
//  Created by laputer on 9/17/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

/**
 1. Add a table view to the controller
 2. Streach the table view so that it occupies whole screen
 3. Add a table view cell to the table
 4. Add cell identifier in the left column menu
 5. Drag and drop an outlet for the tableview on the code name it tblView
 6. Add UITableViewDelegate, UITableViewDataSource as the protocols on the view controller
 7. Complier will start complaining and click on the dot and add the function stubs
 
      1. Add a Table View to the Controller
      2. Streach the table view so that it occupies whole screen
      3. Add a table view cell to the table
      4. Add cell identifier in the left column menu
      5. Drag and drop an outlet for the tableview on the code name it tblView
      6. Add UITableViewDelegate, UITableViewDataSource as the protocols on the view controller class
      7. Compiler will start complaining and click on the dot and add the function stubs
      8. In viewDidLoad add tblView.delegate = self and tblView.dataSource = self
      9. Create an array which will act as Data source for now
      10. In the tableView function for numberOfRowsInSection return array.count value
      11. In the table view function for cellForRowAt, create a variable for cell and assign it to tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
      12. Assign value to the cell's text view.text
      13. Return the cell
 
 
 */

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

