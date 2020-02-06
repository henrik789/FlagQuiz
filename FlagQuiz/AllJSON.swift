//
//  AllJSON.swift
//  FlagQuiz
//
//  Created by Henrik on 2020-02-05.
//  Copyright © 2020 Henrik. All rights reserved.
//
//
//import Foundation
//
//class Country {
//
//    let path = Bundle.main.path(forResource: "countriesDict", ofType: "json")!
//    let jsonString = try? String(contentsOfFile: path, encoding: String.Encoding.utf8)
//    let json = JSON(parseJSON: jsonString!)
//
//    func printJson(){
//        if let data = json.data(using: .utf8) {
//            if let json = try? JSON(data: data) {
//                for item in json["people"].arrayValue {
//                    print(item["firstName"].stringValue)
//                }
//            }
//        }
//    }
//
//}
//
//
