//
//  ViewController.swift
//  SamBostonAssign3
//
//  Created by Boston, Samuel T. on 3/1/26.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var ratingLabel: UILabel!
    var recievedStars = 0
    
    @IBOutlet weak var spaghettiButton: UIView!
    @IBAction func spaghettiSegue(_ sender: Any) {
        print("Spaghetti Segue Triggered!")
    }
    
    @IBOutlet weak var saladButton: UIView!
    @IBAction func saladSegue(_ sender: Any) {
        print("Salad Segue Triggered!")
        performSegue(withIdentifier: "Salad", sender: self)
    }
    
    @IBOutlet weak var burgerButton: UIView!
    @IBAction func burgerSegue(_ sender: Any) {
        print("Burger Segue Triggered!")
        let sb = storyboard ?? UIStoryboard(name: "Main", bundle: nil)
        guard let vc = sb.instantiateViewController(withIdentifier: "ReciepeViewController") as? ReciepeViewController else{
            return
        }
        vc.recievedFood = "Burger"
        // vc.modalPresentationStyle = .fullScreen
        present(vc, animated:true)
    }
    
    @IBAction func unwindToFirstVC(_ sender: UIStoryboardSegue) {
        print("Unwind to Food Menu")
        if let reviewVC = sender.source as? ReviewViewController{
            let stars = reviewVC.starNum
            switch stars {
            case 1:
                ratingLabel.text = ("Your Rating: 1/5")
            case 2:
                ratingLabel.text = ("Your Rating: 2/5")
            case 3:
                ratingLabel.text = ("Your Rating: 3/5")
            case 4:
                ratingLabel.text = ("Your Rating: 4/5")
            case 5:
                ratingLabel.text = ("Your Rating: 5/5")
            default:
                break
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest = segue.destination as? ReciepeViewController{
            if let id = segue.identifier{
                dest.recievedFood = id
            } else {
                dest.recievedFood = "No Food"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        spaghettiButton.layer.cornerRadius = 12
        spaghettiButton.clipsToBounds = true
        spaghettiButton.layer.borderWidth = 1
        
        saladButton.layer.cornerRadius = 12
        saladButton.clipsToBounds = true
        saladButton.layer.borderWidth = 1
        
        burgerButton.layer.cornerRadius = 12
        burgerButton.clipsToBounds = true
        burgerButton.layer.borderWidth = 1
    }


}

