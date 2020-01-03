//
//  ViewController.swift
//  FlagQuiz
//
//  Created by Henrik on 2019-12-20.
//  Copyright © 2019 Henrik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Screen width.
    public var screenWidth: CGFloat {
        return UIScreen.main.bounds.width
    }
    
    // Screen height.
    public var screenHeight: CGFloat {
        return UIScreen.main.bounds.height
    }
    
    @IBOutlet weak var startButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startAnimation()
        
        
    }
    
    func startAnimation() {

            UIView.animate(withDuration: 0.8, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 2, options: .curveEaseIn, animations: {
                self.view.alpha = 1
                self.view.backgroundColor = UIColor.white
                self.view.frame = CGRect(x: 10, y: 200, width: self.screenWidth , height: self.screenHeight / 2)
                self.view.layer.cornerRadius = 20
//                self.view.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
                let snowView = SnowView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
                let snowClipView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
                snowClipView.clipsToBounds = true
                snowClipView.addSubview(snowView)
                self.view.addSubview(snowClipView)
                
            }) { _ in
                
                
            }
    }
    
}

