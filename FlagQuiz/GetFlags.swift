
import Foundation
import Kingfisher

class GetFlags {
    

    var urlArray: [URL] = []
    let flagArray = ["AD", "AF", "AG","AL", "AO", "BS"]
    
//    func getAllFlags(completion: @escaping ([URL]) -> Void){
//        for index in 0..<flagArray.count {
//            let land = flagArray[index]
//            let imageUrl = URL(string: "https://www.countryflags.io/\(land)/flat/64.png")
//            urlArray.append(imageUrl!)
//        }
//        completion(urlArray)
//    }
    
    func buildFlagArray() -> String {
        let randomNumber = Int.random(in: 0..<flagArray.count)
        let randomFlag = flagArray[randomNumber]
        return randomFlag
    }
    
    func checkCountry(landCode: String) -> String {
        switch landCode {
        case "AD":
            return "Andorra"
        case "AF":
            return "Afghanistan"
        case "AG":
            return "Antigua and Barbuda"
        case "AL":
            return "Albania"
        case "AO":
            return "Angola"
        case "BS":
            return "Bahamas"
//        case "AO":
//            return "Angola"
//        case "AQ":
//            return "Antarctica"
//        case "AR":
//            return "Argentina"
//        case "AS":
//            return "American Samoa"
//        case "AT":
//            return "Austria"
//        case "AU":
//            return "Australia"
//        case "AW":
//            return "Aruba"
//        case "AX":
//            return "Åland"
//        case "AZ":
//            return "Azerbadjan"
//        case "BA":
//            return "Bosnia and Herzegovina"

        default:
            return "Sweden"
        }
    }
    
    
}
