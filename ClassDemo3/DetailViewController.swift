//
//  DetailViewController.swift
//  ClassDemo3
//
//  Created by Joe Miller on 7/19/22.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var teamLabel: UILabel!
    
    var teamName:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        teamLabel.text = "Team selected: \(teamName)"
        let teamIndex = teams.firstIndex(of: teamName)
        cityLabel.text = "City selected: \(cities[teamIndex!])"
        
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
