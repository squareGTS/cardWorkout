//
//  CardWorkoutVC.swift
//  cardWorkout
//
//  Created by Maxim Bekmetov on 06.09.2022.
//

import UIKit

class CardWorkoutVC: UIViewController {

    @IBOutlet weak var cardImageView: UIImageView!

    @IBOutlet var buttons: [UIButton]!

    override func viewDidLoad() {
        super.viewDidLoad()

        for button in buttons {
            button.layer.cornerRadius = 8
        }
    }

    @IBAction func stopButtonTapped(_ sender: UIButton) {

    }

    @IBAction func restartButtonTapped(_ sender: UIButton) {


    }

    @IBAction func rulesButtonTapped(_ sender: UIButton) {

        
    }

}
