
import Foundation
import Kingfisher

class GetFlags {
    
    @IBOutlet weak var imageView: UIImageView!
    var urlArray: [URL] = []
    let flagArray = ["AD", "AE", "AF","AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS",
                    "AT", "AU", "AW", "AX", "AZ", "BA"]
    
    func getAllFlags(completion: @escaping ([URL]) -> Void){
        for index in 0..<flagArray.count {
            let land = flagArray[index]
            let imageUrl = URL(string: "https://www.countryflags.io/\(land)/flat/64.png")
            urlArray.append(imageUrl!)
        }
        completion(urlArray)
    }
    
    func downloadFlagImage() {
        let url = URL(string: "https://www.countryflags.io/AL/flat/64.png")
        imageView.kf.indicatorType = .activity
        imageView.kf.setImage(with: url)
        imageView.layer.cornerRadius = 14
        imageView.layer.borderColor = UIColor(named: "Whiteish")?.cgColor
        imageView.layer.borderWidth = 2
        imageView.clipsToBounds = true
    }
    
}
