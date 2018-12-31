//
//  ViewController.swift
//  CardTutorial-Final
//
//  Created by Riley Norris on 12/29/18.
//  Copyright © 2018 Riley Norris. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var cardTableView: UITableView!
    
    let pictures: [UIImage] = [UIImage(named: "beach.jpg")!, UIImage(named: "mountain.jpg")!, UIImage(named: "desert.jpg")!]
    let titles: [String] = ["Beach Paradise", "Mountain Resort", "Desert Wasteland"]
    let descriptions: [String] = ["A beautiful beach paradise for the entire family.", "Stunning mountain view in the rockies.", "A desolate wasteland of nothing but sand."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    /// How many rows in the tableview?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    /// Defines what cells are being used
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cardCell", for: indexPath) as! CardCell
        
        cell.configure(picture: pictures[indexPath.row], title: titles[indexPath.row], description: descriptions[indexPath.row])
        
        return cell
    }
}

