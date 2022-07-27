//
//  ViewController.swift
//  ClassDemo3
//
//  Created by Joe Miller on 7/19/22.
//

import UIKit

public let teams = [
    "Dodgers", "Giants", "Cubs", "Cardinals", "Mets", "Braves", "Yankees", "Red Sox", "Rangers", "Astros", "Tigers", "Royals"
]

public let cities = [
    "Los Angeles", "San Francisco", "Chicago", "St. Louis", "New York", "Atlanta", "Ney York", "Boston", "Texas", "Houston", "Detroit", "Kansas City"
]

let textCellIdentifier = "TextCell"
let segueIdentifier = "SI"

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: textCellIdentifier, for: indexPath as IndexPath)
        let row = indexPath.row
        cell.textLabel?.text = teams[row]
        
        if indexPath.row < 6 {
            cell.detailTextLabel?.text = "National League"
        } else {
            cell.detailTextLabel?.text = "American League"
        }
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teams.count
    
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return indexPath.row == 6 ? nil : indexPath
            
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueIdentifier,
           let destination = segue.destination as? DetailViewController,
           let teamIndex = tableView.indexPathForSelectedRow?.row {
            destination.teamName = teams[teamIndex]
            
        }
    }
    
    


}

