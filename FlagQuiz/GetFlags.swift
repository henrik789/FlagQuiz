
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
//        
//        func buildFlagArray2() -> String {
//            
//            let randomNumber = Int.random(in: totalFlags.count / (1/3)..<totalFlags.count / (2/3))
//            let randomFlag = totalFlags[randomNumber]
//            let fileName = randomFlag
//            
//            var components = fileName.components(separatedBy: ".")
//            if components.count > 1 { // If there is a file extension
//                components.removeLast()
////                print("2: \(components.joined(separator: "."))")
//                return components.joined(separator: ".")
//            }
//            return fileName
//        }
//        
//        func buildFlagArray3() -> String {
//            
//            let randomNumber = Int.random(in: totalFlags.count / (2/3)..<totalFlags.count)
//            let randomFlag = totalFlags[randomNumber]
//            let fileName = randomFlag
//            
//            var components = fileName.components(separatedBy: ".")
//            if components.count > 1 { // If there is a file extension
//                components.removeLast()
////                print("3: \(components.joined(separator: "."))")
//                return components.joined(separator: ".")
//            }
//            return fileName
//        }
//        
        
        
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
                return "Colombia" //kjhgg//
            case "is":
                return "Iceland"
            case "in":
                return "India"
            case "id":
                return "Indonesia"
            case "ir":
                return "Iran"
            case "iq":
                return "Iraq"
            case "ie":
                return "Ireland"
            case "il":
                return "Israel"
            case "it":
                return "Italy"
            case "jm":
                return "Jamaica"
            case "jp":
                return "Japan"
            case "jo":
                return "Jordan"
            case "kz":
                return "Kazahkstan"
            case "ke":
                return "Kenya"
            case "ki":
                return "Kiribati"
            case "xk":
                return "Kosovo"
            case "kw":
                return "Kuwait"
            case "kg":
                return "Kyrgyztan"
            case "la":
                return "Laos"
            case "lv":
                return "Latvia"
            case "lb":
                return "Lebanon"
            case "ls":
                return "Lesotho"
            case "lr":
                return "Liberia"
            case "ly":
                return "Libya"
            case "li":
                return "Liechtenstein"
            case "lt":
                return "Lithuania"
            case "lu":
                return "Luxembourg"
            case "mk":
                return "Macedonia"
            case "mg":
                return "Madagascar"
            case "mw":
                return "Malawi"
            case "my":
                return "Malaysia"
            case "mv":
                return "Maldives"
            case "ml":
                return "Mali"
            case "mt":
                return "Malta"
            case "mh":
                return "The marshall Islands"
            case "mr":
                return "Mauretania"
            case "mu":
                return "Mauritius"
            case "mx":
                return "Mexico"
            case "fm":
                return "Micronesia"
            case "md":
                return "Moldova"
            case "mc":
                return "Monaco"
            case "mn":
                return "Mongolia"
            case "me":
                return "Montenegro"
            case "ma":
                return "Morocco"
            case "mz":
                return "Mozambique"
            case "mm":
                return "Myanmar"
            case "na":
                return "Namibia"
            case "nr":
                return "Nauru"
            case "np":
                return "Nepal"
            case "nl":
                return "The Netherlands"
            case "nz":
                return "New Zeeland"
            case "ni":
                return "Nicaragua"
            case "ne":
                return "Niger"
            case "ng":
                return "Nigeria"
            case "nu":
                return "Niue"
            case "kp":
                return "North Korea"
            case "no":
                return "Norway"
            case "om":
                return "Oman"
            case "pk":
                return "Pakistan"
            case "pw":
                return "Palau"
            case "pa":
                return "Panama"
            case "pg":
                return "Papua New Guinea"
            case "py":
                return "Paraguay"
            case "cn":
                return "The Peoples Republic of China"
            case "pe":
                return "Peru"
            case "ph":
                return "The Philppines"
            case "pl":
                return "Poland"
            case "pt":
                return "Portugal"
            case "qa":
                return "Qatar"
            case "tw":
                return "The Republic of China"
            case "cg":
                return "The Republic of the Congo"
            case "ro":
                return "Romania"
            case "ru":
                return "Russia"
            case "rw":
                return "Rwanda"
            case "kn":
                return "Saint Kitts and Nevis"
            case "lc":
                return "Saint Lucia"
            case "vc":
                return "saint Vincent and the Grenadines"
            case "ws":
                return "Samoa"
            case "sm":
                return "San Marino"
            case "st":
                return "Sao Tome and Principe"
            case "sa":
                return "Saudi Arabia"
            case "sn":
                return "Senegal"
            case "rs":
                return "Serbia"
            case "sc":
                return "The Seychelles"
            case "sl":
                return "Sierra Leone"
            case "sg":
                return "Singapore"
            case "sk":
                return "Slovakia"
            case "si":
                return "Slovenia"
            case "sb":
                return "Gabon"
            case "so":
                return "France"
            case "za":
                return "Finland"
            case "kr":
                return "Fiji"
            case "ss":
                return "Ethiopia"
            case "es":
                return "Estonia"
            case "lk":
                return "Eritrea"
            case "ps":
                return "Equatorial Guinea"
            case "sd":
                return "El Salvador"
            case "sr":
                return "Egypt"
            case "sz":
                return "Ecuador"
            case "se":
                return "East Timor"
            case "ch":
                return "The Dominican Republic"
            case "sy":
                return "Dominica"
            case "tj":
                return "Djibouti"
            case "tz":
                return "Denmark"
            case "th":
                return "The Democratic Republic of Congo"
            case "tg":
                return "The Czech Republic"
            case "to":
                return "Cyprus"
            case "tt":
                return "Cuba"
            case "tn":
                return "Croatia"
            case "tr":
                return "Cote d'Ivorie"
            case "tm":
                return "Costa Rica"
            case "tv":
                return "Cook Islands"
            case "ug":
                return "The Comoros"
            case "ua":
                return "Colombia"
            case "ae":
                return "The Dominican Republic"
            case "gb":
                return "Dominica"
            case "us":
                return "Djibouti"
            case "uy":
                return "Denmark"
            case "uz":
                return "The Democratic Republic of Congo"
            case "vu":
                return "The Czech Republic"
            case "va":
                return "Cyprus"
            case "ve":
                return "Cuba"
            case "vn":
                return "Croatia"
            case "eh":
                return "Cote d'Ivorie"
            case "ye":
                return "Costa Rica"
            case "zm":
                return "Cook Islands"
            case "zw":
                return "The Comoros"

            default:
                return "Sweden"
            }
        }
        
        
}
