
import UIKit

class TimerFunc {

@IBOutlet weak var actionButton: UIButton!
@IBOutlet weak var timeLabel: UILabel!
var timer:Timer?
var timeLeft = 60


func setupTimer() {
    timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(onTimerFires), userInfo: nil, repeats: true)
}

@objc func onTimerFires() {
    timeLeft -= 1
    timeLabel.text = "\(timeLeft) seconds left"
    
    if timeLeft <= 0 {
        actionButton.isEnabled = true
        actionButton.setTitle("enabled", for: .normal)
        timer?.invalidate()
        timer = nil
    }
}

@IBAction func btnClicked(_ sender: UIButton) {
    print("API Fired")
}
}
