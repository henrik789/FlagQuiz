
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
    @IBOutlet var startView: UIVisualEffectView!
    @IBOutlet weak var countdownLabel: UILabel!
    @IBOutlet weak var flagView: UIView!
    @IBOutlet weak var countdownLabelHome: UILabel!
    var givenLand = String()
    var landFullname = String()
    var getFlags = GetFlags()
    var points: Int = 0
    var flagCounter = 0
    var randomNumber = 0
    var answer = String()
//    var timer: Timer?
//    var timeLeft: Float = 15.0
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
//        timer?.fire()
    }
    @IBOutlet weak var flagImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getFlags.buildArray()
        config()
//        RunLoop.current.add(timer, forMode: .RunLoop.Mode.common)
    }
    
    
    func config() {
//        startView.frame = CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight)
//        view.addSubview(startView)
//        var i: Float = 3.0
//        Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { startTimer in
//            i -= 0.01
//            self.startView.alpha = CGFloat(i)
//
//            if i == 0 {
//                startTimer.invalidate()
//                print(i)
//                self.startView.removeFromSuperview()
//                self.
//            }
//        }
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(300)) {
            print("BOOYAH!")
        }
        newFlag((Any).self)
        landOne.commonStyle()
        landTwo.commonStyle()
        landThre.commonStyle()
        landFour.commonStyle()

    }
    
    func setCountryName(land: String) {
        answer = getFlags.checkCountry(landCode: land)
        randomNumber = Int.random(in: 1...4)
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

                UIView.transition(with: button, duration: 0.3, options: .curveEaseOut, animations: {
                    button.backgroundColor = .greenOne
                    button.setTitleColor(.white, for: .normal)
                })  { _ in
                    self.points = self.points + 1
                    self.pointsLabel.text = "Points: \(self.points)"
//                    self.timer?.invalidate()
                    self.newFlag((Any).self)
                    button.backgroundColor = UIColor.white
                    button.setTitleColor(.black, for: .normal)
                }
                
            }else {
                UIView.transition(with: button, duration: 0.3, options: .curveEaseOut, animations: {
                    button.backgroundColor = .redOne
                    button.setTitleColor(.white, for: .normal)
                })  { _ in
                    button.backgroundColor = UIColor.white
                    button.setTitleColor(.black, for: .normal)
                    print(self.randomNumber)
                    if self.randomNumber == 1 {
                        UIView.transition(with: button, duration: 1.0, options: .curveEaseOut, animations: {
                            self.landOne.backgroundColor = .greenOne
                            self.landOne.setTitleColor(.white, for: .normal)
                        })  { _ in
//                            self.pointsLabel.text = "Points: \(self.points)"
                            self.newFlag((Any).self)
                            self.landOne.backgroundColor = UIColor.white
                            self.landOne.setTitleColor(.black, for: .normal)
                        }
                    } else if self.randomNumber == 2 {
                        UIView.transition(with: button, duration: 1.0, options: .curveEaseOut, animations: {
                            self.landTwo.backgroundColor = .greenOne
                            self.landTwo.setTitleColor(.white, for: .normal)
                        })  { _ in
//                            self.pointsLabel.text = "Points: \(self.points)"
                            self.newFlag((Any).self)
                            self.landTwo.backgroundColor = UIColor.white
                            self.landTwo.setTitleColor(.black, for: .normal)
                        }
                    }else if self.randomNumber == 3 {
                        UIView.transition(with: button, duration: 1.0, options: .curveEaseOut, animations: {
                            self.landThre.backgroundColor = .greenOne
                            self.landThre.setTitleColor(.white, for: .normal)
                        })  { _ in
//                            self.pointsLabel.text = "Points: \(self.points)"
                            self.newFlag((Any).self)
                            self.landThre.backgroundColor = UIColor.white
                            self.landThre.setTitleColor(.black, for: .normal)
                        }
                    } else if self.randomNumber == 4 {
                        UIView.transition(with: button, duration: 1.0, options: .curveEaseOut, animations: {
                            self.landFour.backgroundColor = .greenOne
                            self.landFour.setTitleColor(.white, for: .normal)
                        })  { _ in
//                            self.pointsLabel.text = "Points: \(self.points)"
                            self.newFlag((Any).self)
                            self.landFour.backgroundColor = UIColor.white
                            self.landFour.setTitleColor(.black, for: .normal)
                        }
                    }
                }
                
                
            }
            
        }else {
            startOver()
        }
//        createTimer()
//        print("Timer created")
    }
    
    func startOver() {
        pointsLabel.text = "All flags done"
    }
    
//    @objc func onTimerFires(){
//        timeLeft -= 0.1
//        let formattedTime = String(format: "Time: %.2f", timeLeft)
//        countdownLabelHome.text = "Time: \(formattedTime)"
////        points = points + timeLeft
////        let formattedPoints = String(format: "Points: %.2f", points)
////        pointsLabel.text = "\(formattedPoints)"
//        if timeLeft <= 0 {
//            timer?.invalidate()
//            timer = nil
//            newFlag((Any).self)
//        }
//    }
//
//    func createTimer() {
//        // 1
//        if timer == nil {
//            // 2
//            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(onTimerFires), userInfo: nil, repeats: true)
//        }
//        print("Timer created !!")
//    }
//    @objc func startTimer(timer: Timer) {
//        if  let userInfo = timer.userInfo as? [String: Int],
//            let score = userInfo["score"] {
//
//            print("You scored \(score) points!")
//
////        var i = 15.0
////        timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { timer in
////            i -= 0.01
////            let formatted = String(format: "Time: %.2f", i)
////            self.countdownLabelHome.text = "\(formatted)"
////            if i == 0 {
////                timer.invalidate()
////                self.newFlag((Any).self)
////            }
//        }
//
//    }
    
}

