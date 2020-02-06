//
//  MenuViewController.swift
//  FlagQuiz
//
//  Created by Henrik on 2020-01-12.
//  Copyright © 2020 Henrik. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var startFull: UIButton!
    @IBOutlet weak var startTime: UIButton!
    @IBOutlet weak var startRe: UIButton!
    @IBOutlet weak var flagTable: UIButton!
    @IBOutlet weak var HighScore: UIButton!
    @IBOutlet weak var back: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        config()
    }
    
    func config() {
        startRe.commonStyle()
        startFull.commonStyle()
        startTime.commonStyle()
        flagTable.commonStyle()
        HighScore.commonStyle()
        back.commonStyle()
    }


}
