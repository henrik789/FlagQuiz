
import UIKit


extension UIButton {
func commonStyle() {
    layer.cornerRadius = self.frame.size.height / 2
    layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: layer.cornerRadius).cgPath
    layer.shadowColor = UIColor.yellow.cgColor
    layer.shadowOpacity = 0.5
    layer.shadowOffset = CGSize(width: 1, height: -3)
    layer.shadowRadius = 3.0
    layer.masksToBounds = true
}
}
