
import Foundation
import Kingfisher

class GetFlags {
    
    var pictures = [String]()
//    var urlArray: [URL] = []
//    let flagArray = ["AD", "AF", "AG","AL", "AO", "BS"]
    


    
    func buildFlagArray() -> String {
        
        let docPath = Bundle.main.resourcePath! + "/" + "Countries"
        let fileManager = FileManager.default
        let filesFromBundle = try! fileManager.contentsOfDirectory(atPath: docPath)
        pictures = filesFromBundle
        let randomNumber = Int.random(in: 0..<pictures.count)
        let randomFlag = pictures[randomNumber]
        let fileName = randomFlag
        print(pictures.count)
        var components = fileName.components(separatedBy: ".")
        if components.count > 1 { // If there is a file extension
            components.removeLast()
            return components.joined(separator: ".")
        } 
        return fileName
    }
    
    func buildFlagArray1() -> String {
        
        let docPath = Bundle.main.resourcePath! + "/" + "Countries"
        let fileManager = FileManager.default
        let filesFromBundle = try! fileManager.contentsOfDirectory(atPath: docPath)
        pictures = filesFromBundle
        let randomNumber = Int.random(in: 0..<11)
        let randomFlag = pictures[randomNumber]
        let fileName = randomFlag
        var components = fileName.components(separatedBy: ".")
        if components.count > 1 { // If there is a file extension
            components.removeLast()
            return components.joined(separator: ".")
        }
        return fileName
    }
    
    func buildFlagArray2() -> String {
        
        let docPath = Bundle.main.resourcePath! + "/" + "Countries"
        let fileManager = FileManager.default
        let filesFromBundle = try! fileManager.contentsOfDirectory(atPath: docPath)
        pictures = filesFromBundle
        let randomNumber = Int.random(in: 11..<21)
        let randomFlag = pictures[randomNumber]
        let fileName = randomFlag
        var components = fileName.components(separatedBy: ".")
        if components.count > 1 { // If there is a file extension
            components.removeLast()
            return components.joined(separator: ".")
        }
        return fileName
    }
    
    func buildFlagArray3() -> String {
        
        let docPath = Bundle.main.resourcePath! + "/" + "Countries"
        let fileManager = FileManager.default
        let filesFromBundle = try! fileManager.contentsOfDirectory(atPath: docPath)
        pictures = filesFromBundle
        let randomNumber = Int.random(in: 21..<35)
        let randomFlag = pictures[randomNumber]
        let fileName = randomFlag
        var components = fileName.components(separatedBy: ".")
        if components.count > 1 { // If there is a file extension
            components.removeLast()
            return components.joined(separator: ".")
        }
        return fileName
    }
    
    
    
    func checkCountry(landCode: String) -> String {
        switch landCode {
        case "ad":
            return "Andorra"
        case "af":
            return "Afghanistan"
        case "ag":
            return "Antigua and Barbuda"
        case "al":
            return "Albania"
        case "ao":
            return "Angola"
        case "bs":
            return "Bahamas"
        case "dz":
            return "Algeria"
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
