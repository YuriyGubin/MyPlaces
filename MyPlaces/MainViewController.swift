//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Yuriy on 19.02.2023.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restaurantNames = [
        "Burger Heroes",
        "Kitchen",
        "Bonsai",
        "Дастархан",
        "Индокитай",
        "X.O",
        "Балкан Гриль",
        "Sherlock Holmes",
        "Speak Easy",
        "Morris Pub",
        "Вкусные истории",
        "Классик",
        "Love&Life",
        "Шок",
        "Бочка"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 85
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        restaurantNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? CustomTableViewCell else { return UITableViewCell() }
        //var content = cell.defaultContentConfiguration()
        
        let restaurant = restaurantNames[indexPath.row]
        
        cell.nameLabel.text = restaurant
        cell.imageOfPlace.image = UIImage(named: restaurant)
        cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.height / 2
        cell.imageOfPlace.clipsToBounds = true
        
//        content = restaurant
//        content.image = UIImage(named: restaurant)
//        content.imageProperties.cornerRadius = tableView.rowHeight / 2
//        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - Table view delegate
    
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        85
//    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
