
import UIKit


extension UIButton {
func commonStyle() {
    layer.cornerRadius = self.frame.height / 3

    layer.masksToBounds = true
}
}
