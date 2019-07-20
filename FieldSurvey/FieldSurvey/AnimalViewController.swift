//
//  AnimalViewController.swift
//  FieldSurvey
//
//  Created by Peyton Tettleton on 7/19/19.
//  Copyright © 2019 Peyton Tettleton. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var sportsEventsTableView: UITableView!
    
    let sportsEvents = SportsEventsLoader.load(jsonFileName: sports_events)
    
    let dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        // Do any additional setup after loading the view.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return sportsEvents.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "animalsCell", for: indexPath)
        
        if let cell = cell as? AnimalTableViewCell {
            let sportsEvents = sportsEvents[indexPath.row]
            cell.AnimalIconImageView.image = sportsEvents.sport.image
            cell.MatchupLabel.text = sportsEvents.matchup
            cell.DateLabel.text = dateFormatter.string(from: sportsEvents.date)
            
        }
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? AnimalDetailViewController{
           let row sportsEventsTableView.indexPathsForVisibleRow?.row
            destination.sportsEvent = sportsEvents[]
        }
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
