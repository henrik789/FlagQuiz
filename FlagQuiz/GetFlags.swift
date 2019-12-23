
import Foundation
import Kingfisher

class GetFlags {
    

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
    
    
}
