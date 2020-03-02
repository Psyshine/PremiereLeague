//
//  TeamListViewController.swift
//  PremiereLeague
//
//  Created by Andry Pro on 02.03.2020.
//  Copyright © 2020 Andry Pro. All rights reserved.
//

import UIKit

class TeamListViewController: UITableViewController {
    //MARK: - IB Outlets
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
   private let networkManager = NetworkManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 100
        activityIndicator.startAnimating()
        activityIndicator.hidesWhenStopped = true
        networkManager.fetchData()
        
    }

    // MARK: - Table view data source

  

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TeamTableViewCell
        

        // Configure the cell...
        
        return cell
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
