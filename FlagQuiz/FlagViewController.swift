//
//  FlagViewController.swift
//  FlagQuiz
//
//  Created by Henrik on 2019-12-23.
//  Copyright © 2019 Henrik. All rights reserved.
//

import UIKit

class FlagViewController: UIViewController {

    var getFlags = GetFlags()
    @IBOutlet weak var flagImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        flagImage.image = UIImage(named: "start")
        downloadFlagImage()
        
    }
    
    func downloadFlagImage() {
        let url = URL(string: "https://www.countryflags.io/\(buildFlagArray())/flat/64.png")
                flagImage.kf.indicatorType = .activity
        flagImage.kf.setImage(with: url)
//                flagImage.layer.cornerRadius = 14
//                flagImage.layer.borderWidth = 2
//                flagImage.clipsToBounds = true
        
    }

    func buildFlagArray() -> String {
        let randomNumber = Int.random(in: 0..<getFlags.flagArray.count)
        let randomFlag = getFlags.flagArray[randomNumber]
        return randomFlag
    }
    
}
