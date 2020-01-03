//
//  FlagViewController.swift
//  FlagQuiz
//
//  Created by Henrik on 2019-12-23.
//  Copyright © 2019 Henrik. All rights reserved.
//

import UIKit


class FlagViewController: UIViewController {
    
    // Screen width.
    public var screenWidth: CGFloat {
        return UIScreen.main.bounds.width
    }
    
    // Screen height.
    public var screenHeight: CGFloat {
        return UIScreen.main.bounds.height
    }
    @IBOutlet weak var flagView: UIView!
    var givenLand = String()
    var landFullname = String()
    var getFlags = GetFlags()
    var points = 0
    var flagCounter = 0
    var answer = String()
    @IBOutlet weak var flagLabel: UILabel!
    
    @IBOutlet weak var pointsLabel: UILabel!
    @IBOutlet weak var landOne: UIButton!
    @IBOutlet weak var landTwo: UIButton!
    @IBOutlet weak var landThre: UIButton!
    @IBOutlet weak var landFour: UIButton!
    
    @IBAction func landOne(_ sender: Any) {
        let buttonOne = sender
        evaluate(button: buttonOne as! UIButton)
    }
    @IBAction func landTwo(_ sender: Any) {
        let buttonTwo = sender
        evaluate(button: buttonTwo as! UIButton)
    }
    @IBAction func landThree(_ sender: Any) {
        let buttonThree = sender
        evaluate(button: buttonThree as! UIButton)
    }
    @IBAction func landFour(_ sender: Any) {
        let buttonFour = sender
        evaluate(button: buttonFour as! UIButton)
    }
    @IBAction func newFlag(_ sender: Any) {
        flagCounter = flagCounter + 1
        givenLand = getFlags.buildFlagArray()
        flagImage.image = UIImage(named: givenLand + ".png")
        setCountryName(land: givenLand)
        flagLabel.text = "Flags: \(flagCounter) / \(getFlags.totalFlags.count + 1)"
    }
    @IBOutlet weak var flagImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        flagView.frame = CGRect(x: screenWidth / 5, y: screenHeight / 2, width: screenWidth / 4, height: screenHeight / 3)
//        flagView.layer.cornerRadius = flagView.frame.size.height / 2
//        flagView.clipsToBounds = true
        getFlags.buildArray()
        config()
//        flagImage.layer.borderColor = UIColor.black.cgColor
//        flagImage.layer.borderWidth = 1
        
    }
    
    
    func config() {
        landOne.commonStyle()
        landTwo.commonStyle()
        landThre.commonStyle()
        landFour.commonStyle()
    }
    
    func setCountryName(land: String) {
        answer = getFlags.checkCountry(landCode: land)
        let randomNumber = Int.random(in: 1...4)
        if randomNumber == 1 {
            landOne.setTitle(answer, for: .normal)
            setOtherNames(fake1: landTwo, fake2: landThre, fake3: landFour)
        } else if randomNumber == 2 {
            landTwo.setTitle(answer, for: .normal)
            setOtherNames(fake1: landOne, fake2: landThre, fake3: landFour)
        } else if randomNumber == 3 {
            landThre.setTitle(answer, for: .normal)
            setOtherNames(fake1: landOne, fake2: landTwo, fake3: landFour)
        } else if randomNumber == 4 {
            landFour.setTitle(answer, for: .normal)
            setOtherNames(fake1: landOne, fake2: landTwo, fake3: landThre)
        }
    }
    
    func setOtherNames(fake1: UIButton, fake2: UIButton, fake3: UIButton) {
        
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
    
    func evaluate(button: UIButton) {
        if flagCounter <= getFlags.totalFlags.count {
        if button.currentTitle == answer {
            points = points + 1
            pointsLabel.text = "Points: \(points)"
        }
        pointsLabel.text = "Points: \(points)"
        newFlag((Any).self)
        }else {
            startOver()
        }
    }
    
    func startOver() {
        pointsLabel.text = "All flags done"
    }
    
}
