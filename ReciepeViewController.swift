//
//  ReciepeViewController.swift
//  SamBostonAssign3
//
//  Created by Boston, Samuel T. on 3/2/26.
//

import UIKit

class ReciepeViewController: UIViewController {

    @IBOutlet weak var foodName: UILabel!
    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var foodInfo: UILabel!
    var recievedFood: String = "Unknown"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switch recievedFood{
        case "Spaghetti":
            foodName.text = "Spaghetti"
            foodImage.image = UIImage(named: "Spaghetti")
            foodInfo.text = "Spaghetti pasta \nTomato sauce, preferably low sodium \nParmesan Cheese \nMinced Garlic \nOlive oil \nDried oregano, salt, and pepper for seasoning"
        case "Salad":
            foodName.text = "Caesar Salad"
            foodImage.image = UIImage(named: "Salad")
            foodInfo.text = "4-5 heads of Little Gem Lettuce \nShaved Parmesan \nLemon Wedges \nBreadcrumbs \nDressing of choice"
        case "Burger":
            foodName.text = "Cheese Burger"
            foodImage.image = UIImage(named: "Cheeseburger")
            foodInfo.text = "20 to 24 ounces ground beef \n1 teaspoon kosher salt \n1 teaspoon freshly ground black pepper \n2 teaspoons extra virgin olive oil \n1 slice of american cheese \n1 hamburger bun \nFresh lettuce, tomato, and onion if preferred"
        default:
            break
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
