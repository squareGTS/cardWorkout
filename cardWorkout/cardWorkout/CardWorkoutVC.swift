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

    var cards: [UIImage] = Card.allValues

    var timer: Timer!

    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer()

        for button in buttons {
            button.layer.cornerRadius = 8
        }
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        timer.invalidate()
    }

    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
    }

    @objc func showRandomImage() {
        cardImageView.image = cards.randomElement() ?? UIImage(named: "AS")
    }

    @IBAction func stopButtonTapped(_ sender: UIButton) {
        timer.invalidate()
    }

    @IBAction func restartButtonTapped(_ sender: UIButton) {
        timer.invalidate()
        startTimer()
    }
}
