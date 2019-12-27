
import Foundation
import Kingfisher

class GetFlags {
    
    var pictures = [String]()
//    var urlArray: [URL] = []
//    let flagArray = ["AD", "AF", "AG","AL", "AO", "BS"]
    
    func buildArray() {
        let docPath = Bundle.main.resourcePath! + "/" + "Countries"
        let fileManager = FileManager.default
        let filesFromBundle = try! fileManager.contentsOfDirectory(atPath: docPath)
        pictures = filesFromBundle
    }

    
    func buildFlagArray() -> String {
        
        let randomNumber = Int.random(in: 0..<pictures.count)
        let randomFlag = pictures[randomNumber]
        let fileName = randomFlag
        var components = fileName.components(separatedBy: ".")
        if components.count > 1 { // If there is a file extension
            components.removeLast()
            return components.joined(separator: ".")
        } 
        return fileName
    }
    
    func buildFlagArray1() -> String {

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
        case "am":
            return "Armenia"
        case "ar":
            return "Argentina"
        case "at":
            return "Austria"
        case "au":
            return "Australia"
        case "az":
            return "Azerbaijan"
        case "ba":
            return "Bosnia and Herzegovina"
        case "bb":
            return "Barbados"
        case "bd":
            return "Bangladesh"
        case "be":
            return ""

        default:
            return "Sweden"
        }
    }
    
    
}
