//
//  FlagViewController.swift
//  FlagQuiz
//
//  Created by Henrik on 2019-12-23.
//  Copyright © 2019 Henrik. All rights reserved.
//

import UIKit
import Kingfisher

class FlagViewController: UIViewController {
    
    var getFlags = GetFlags()
    @IBOutlet weak var pointsLabel: UILabel!
    @IBOutlet weak var landOne: UIButton!
    @IBOutlet weak var landTwo: UIButton!
    @IBOutlet weak var landThre: UIButton!
    @IBOutlet weak var landFour: UIButton!
    @IBAction func landOne(_ sender: Any) {
        
    }
    @IBAction func landTwo(_ sender: Any) {
        
    }
    @IBAction func landThree(_ sender: Any) {
        
    }
    @IBAction func landFour(_ sender: Any) {
        
    }
    @IBOutlet weak var flagImage: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        downloadFlagImage()
        
    }
    
    func downloadFlagImage() {
        let land = getFlags.buildFlagArray()
        let url = URL(string: "https://www.countryflags.io/\(land)/flat/64.png")
        flagImage.kf.indicatorType = .activity
        flagImage.kf.setImage(with: url)
        setCountryName(land: land)
    }
    
    func setCountryName(land: String) {
        let answer = getFlags.checkCountry(landCode: land)
        let randomNumber = Int.random(in: 1...4)
        if randomNumber == 1 {
            landOne.setTitle(answer, for: .normal)
            setOtherNames(correctAnswer: answer, fake1: landTwo, fake2: landThre, fake3: landFour)
        } else if randomNumber == 2 {
            landTwo.setTitle(answer, for: .normal)
            setOtherNames(correctAnswer: answer, fake1: landOne, fake2: landThre, fake3: landFour)
        } else if randomNumber == 3 {
            landThre.setTitle(answer, for: .normal)
            setOtherNames(correctAnswer: answer, fake1: landOne, fake2: landTwo, fake3: landFour)
        } else if randomNumber == 4 {
            landFour.setTitle(answer, for: .normal)
            setOtherNames(correctAnswer: answer, fake1: landOne, fake2: landTwo, fake3: landThre)
        }
    }
    
    func setOtherNames(correctAnswer: String, fake1: UIButton, fake2: UIButton, fake3: UIButton) {
        
        let land = getFlags.buildFlagArray()
        let fakeAnswer = getFlags.checkCountry(landCode: land)
        if fakeAnswer != correctAnswer {
            fake1.setTitle(fakeAnswer, for: .normal)
            fake2.setTitle(fakeAnswer, for:  .normal)
            fake3.setTitle(fakeAnswer, for:  .normal)
        }
        
    }
    
}
