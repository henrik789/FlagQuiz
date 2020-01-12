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
    
    @IBOutlet weak var globe: UIImageView!
    @IBOutlet weak var logo: UIImageView!
    var menuVC = MenuViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logo.alpha = 0
        startAnimation()
        
    }
    
    func startAnimation() {

        UIView.animate(withDuration: 2.0, delay: 0, options: .curveEaseInOut, animations: {
            self.globe.frame = CGRect(x: 0, y: 0, width: self.screenWidth  , height: self.screenHeight )
            self.logo.alpha = 1
            
        }, completion: { finished in
            DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(1000)) {
                self.performSegue(withIdentifier: "menuSegue", sender: self)
            }
            
        })
    }
    
}

