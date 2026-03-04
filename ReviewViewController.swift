//
//  ReviewViewController.swift
//  SamBostonAssign3
//
//  Created by Boston, Samuel T. on 3/2/26.
//

import UIKit

class ReviewViewController: UIViewController {
    
    @IBOutlet weak var star1: UIButton!
    @IBOutlet weak var star2: UIButton!
    @IBOutlet weak var star3: UIButton!
    @IBOutlet weak var star4: UIButton!
    @IBOutlet weak var star5: UIButton!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var finishButton: UIButton!
    
    var starNum = 0
    
    @IBAction func starTapped(_ sender: UIButton) {
        starNum = sender.tag
        switch starNum {
        case 1:
            ratingLabel.text = "Rating 1/5"
        case 2:
            ratingLabel.text = "Rating 2/5"
        case 3:
            ratingLabel.text = "Rating 3/5"
        case 4:
            ratingLabel.text = "Rating 4/5"
        case 5:
            ratingLabel.text = "Rating 5/5"
        default:
            break
        }
        updateStars(amount: starNum)
    }
    @IBAction func finishTapped(_ sender: Any) {
        guard starNum != 0 else {
            let alert = UIAlertController(
                title: "Rating Required", message: "Please select a star.",
                preferredStyle: .alert
            )
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
            print("Alert Triggered!")
            return
        }
    }
    
    func updateStars(amount: Int){
        switch amount {
        case 1:
            star1.setTitle("⭐", for: .normal)
            star2.setTitle("⚫", for: .normal)
            star3.setTitle("⚫", for: .normal)
            star4.setTitle("⚫", for: .normal)
            star5.setTitle("⚫", for: .normal)
        case 2:
            star1.setTitle("⭐", for: .normal)
            star2.setTitle("⭐", for: .normal)
            star3.setTitle("⚫", for: .normal)
            star4.setTitle("⚫", for: .normal)
            star5.setTitle("⚫", for: .normal)
        case 3:
            star1.setTitle("⭐", for: .normal)
            star2.setTitle("⭐", for: .normal)
            star3.setTitle("⭐", for: .normal)
            star4.setTitle("⚫", for: .normal)
            star5.setTitle("⚫", for: .normal)
        case 4:
            star1.setTitle("⭐", for: .normal)
            star2.setTitle("⭐", for: .normal)
            star3.setTitle("⭐", for: .normal)
            star4.setTitle("⭐", for: .normal)
            star5.setTitle("⚫", for: .normal)
        case 5:
            star1.setTitle("⭐", for: .normal)
            star2.setTitle("⭐", for: .normal)
            star3.setTitle("⭐", for: .normal)
            star4.setTitle("⭐", for: .normal)
            star5.setTitle("⭐", for: .normal)
        default:
            break
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        star1.setTitle("⚫", for: .normal)
        star2.setTitle("⚫", for: .normal)
        star3.setTitle("⚫", for: .normal)
        star4.setTitle("⚫", for: .normal)
        star5.setTitle("⚫", for: .normal)
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
