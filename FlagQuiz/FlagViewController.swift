//
//  FlagViewController.swift
//  FlagQuiz
//
//  Created by Henrik on 2019-12-23.
//  Copyright © 2019 Henrik. All rights reserved.
//

import UIKit


class FlagViewController: UIViewController {
    
    var givenLand = String()
    var landFullname = String()
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
    @IBAction func newFlag(_ sender: Any) {
        givenLand = getFlags.buildFlagArray()
        flagImage.image = UIImage(named: givenLand + ".png")
        print(givenLand)
        setCountryName(land: givenLand)
    }
    @IBOutlet weak var flagImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
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
        
        let land1 = getFlags.buildFlagArray1()
        let land2 = getFlags.buildFlagArray2()
        let land3 = getFlags.buildFlagArray3()
        
        let fakeAnswer1 = getFlags.checkCountry(landCode: land1)
        fake1.setTitle(fakeAnswer1, for: .normal)
        let fakeAnswer2 = getFlags.checkCountry(landCode: land2)
        fake2.setTitle(fakeAnswer2, for:  .normal)
        let fakeAnswer3 = getFlags.checkCountry(landCode: land3)
        fake3.setTitle(fakeAnswer3, for:  .normal)
        
        
    }
    
}
