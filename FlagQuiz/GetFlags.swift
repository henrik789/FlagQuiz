
import Foundation
//import Kingfisher

class GetFlags {
    
    var pictures = [String]()
    var totalFlags = [String]()
    
    func buildArray() {
        let docPath = Bundle.main.resourcePath! + "/" + "Countries"
        let fileManager = FileManager.default
        let filesFromBundle = try! fileManager.contentsOfDirectory(atPath: docPath)
        pictures = filesFromBundle
        totalFlags = filesFromBundle
    }
    
    
    func buildFlagArray() -> String {
        if pictures.count < 2 {
            let fileName = pictures[0]
            var components = fileName.components(separatedBy: ".")
            print("Last one is \(pictures[0])")
            if components.count > 1 { // If there is a file extension
                components.removeLast()
                return components.joined(separator: ".")
            }
            }else {
                let randomNumber = Int.random(in: 0..<pictures.count)
                let randomFlag = pictures[randomNumber]
                let fileName = randomFlag
                pictures.remove(at: randomNumber)
//                print(pictures.count)
                var components = fileName.components(separatedBy: ".")
                if components.count > 1 { // If there is a file extension
                    components.removeLast()
                    return components.joined(separator: ".")
                }
            }
        return "Swedn"
    }
        
    func buildFlagArray1(number: Int) -> String {
            
//            let randomNumber = Int.random(in: 0..<totalFlags.count )
            let randomFlag = totalFlags[number]
            let fileName = randomFlag
            
            var components = fileName.components(separatedBy: ".")
            if components.count > 1 { // If there is a file extension
                components.removeLast()
//                print("1: \(components.joined(separator: "."))")
                return components.joined(separator: ".")
            }
            
            return fileName
            
        }
        
        func buildFlagArray2() -> String {
            
            let randomNumber = Int.random(in: totalFlags.count / (1/3)..<totalFlags.count / (2/3))
            let randomFlag = totalFlags[randomNumber]
            let fileName = randomFlag
            
            var components = fileName.components(separatedBy: ".")
            if components.count > 1 { // If there is a file extension
                components.removeLast()
//                print("2: \(components.joined(separator: "."))")
                return components.joined(separator: ".")
            }
            return fileName
        }
        
        func buildFlagArray3() -> String {
            
            let randomNumber = Int.random(in: totalFlags.count / (2/3)..<totalFlags.count)
            let randomFlag = totalFlags[randomNumber]
            let fileName = randomFlag
            
            var components = fileName.components(separatedBy: ".")
            if components.count > 1 { // If there is a file extension
                components.removeLast()
//                print("3: \(components.joined(separator: "."))")
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
                return "Belgium"
            case "bf":
                return "Burkina Faso"
            case "bg":
                return "Bulgaria"
            case "bh":
                return "Bahrain"
            case "bi":
                return "Burundi"
            case "bj":
                return "Benin"
            case "bn":
                return "Brunei"
            case "bo":
                return "Bolivia"
            case "br":
                return "Brazil"
            case "bt":
                return "Bhutan"
            case "bw":
                return "Botswana"
            case "by":
                return "Belarus"
            case "bz":
                return "Belize"
            case "ca":
                return "Canada"
            case "cf":
                return "The Central African Republic"
            case "cl":
                return "Chile"
            case "cm":
                return "Cameroon"
            case "cv":
                return "Cape Verde"
            case "kh":
                return "Cambodia"
            case "td":
                return "Chad"
            case "hu":
                return "Hungary"
            case "hn":
                return "Honduras"
            case "ht":
                return "Haiti"
            case "gy":
                return "Guyana"
            case "gw":
                return "Guinea Bissau"
            case "gn":
                return "Guinea"
            case "gt":
                return "Guatemala"
            case "gd":
                return "Grenada"
            case "gr":
                return "Greece"
            case "gh":
                return "Ghana"
            case "de":
                return "Germany"
            case "ge":
                return "Georgia"
            case "gm":
                return "Gambia"
            case "ga":
                return "Gabon"
            case "fr":
                return "France"
            case "fi":
                return "Finland"
            case "fj":
                return "Fiji"
            case "et":
                return "Ethiopia"
            case "ee":
                return "Estonia"
            case "er":
                return "Eritrea"
            case "gq":
                return "Equatorial Guinea"
            case "sv":
                return "El Salvador"
            case "eg":
                return "Egypt"
            case "ec":
                return "Ecuador"
            case "tl":
                return "East Timor"
            case "do":
                return "The Dominican Republic"
            case "dm":
                return "Dominica"
            case "dj":
                return "Djibouti"
            case "dk":
                return "Denmark"
            case "cd":
                return "The Democratic Republic of Congo"
            case "cz":
                return "The Czech Republic"
            case "cy":
                return "Cyprus"
            case "cu":
                return "Cuba"
            case "hr":
                return "Croatia"
            case "ci":
                return "Cote d'Ivorie"
            case "cr":
                return "Costa Rica"
            case "ck":
                return "Cook Islands"
            case "km":
                return "The Comoros"
            case "co":
                return "Colombia"
            default:
                return "Sweden"
            }
        }
        
        
}
