//
//  websitesViewVC.swift
//  Project4
//
//  Created by Grant Watson on 9/8/22.
//

import UIKit

class websitesViewVC: UITableViewController {
    var websites = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Websites"
        navigationItem.largeTitleDisplayMode = .never
        
        websites = ["google.com", "apple.com", "hackingwithswift.com"]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "URL", for: indexPath)
        cell.textLabel?.text = websites[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Website") as? ViewController {
            vc.website = websites[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
