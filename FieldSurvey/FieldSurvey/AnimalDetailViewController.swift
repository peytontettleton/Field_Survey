//
//  AnimalDetailViewController.swift
//  FieldSurvey
//
//  Created by Peyton Tettleton on 7/19/19.
//  Copyright © 2019 Peyton Tettleton. All rights reserved.
//

import UIKit

class AnimalDetailViewController: UIViewController {
    
    var animalEvent : SportsEvents?
    
    var dateFormatter = DateFormatter()
    
    @IBOutlet weak var AnimalIconImageView: UIImageView!
    @IBOutlet weak var MatchupLabel: UILabel!
    @IBOutlet weak var DateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        AnimalIconImageView.image = animalEvent?.Sport.image
        MatchupLabel.text = animalEvent?.matchup
        
        if let date = animalEvent?.date{
            DateLabel.text = dateFormatter.string(from: <#T##Date#>)
        } else{
            DateLabel.text = ""
        }

        // Do any additional setup after loading the view.
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
