//
//  Data.swift
//  BetterCodableDemo
//
//  Created by Alex Nagy on 23/06/2020.
//  Copyright © 2020 Alex Nagy. All rights reserved.
//

import Foundation
import SparkUI

struct Data {
    
    // MARK: JSONs
    
    static let jsonName = """
    {
      "first": "Alex",
      "last": "Nagy"
    }
    """
    
    static let jsonNameNil = """
    {
      "first": "Alex",
      "last": null
    }
    """
    
    static let jsonNameMissingElement = """
    {
      "first": "Alex"
    }
    """
    
    static let jsonNameNewElement = """
    {
      "first": "Alex",
      "middle": "Rebeloper",
      "last": "Nagy"
    }
    """
    
    static let json = """
    {
      "name": {
        "first": "Alex",
        "last": null
      },
      "userName": "rebeloper",
      "age": 27,
      "posts": [
        {
          "title": "Hello Codable",
          "message": "Codable is awesome"
        },
        null, null
      ]
    }
    """
    
    static let jsonWithNewElement = """
    {
      "name": {
        "first": "Alex",
        "last": null
      },
      "userName": "rebeloper",
      "age": 27,
      "posts": [
        {
          "title": "Hello Codable",
          "message": "Codable is awesome"
        }
      ],
      "newElemet": "new"
    }
    """
    
    static let jsonWithMissingElement = """
    {
      "name": {
        "first": "Alex",
        "last": null
      },
      "userName": "rebeloper"
    }
    """
    
    static let jsonNameData = jsonName.data(using: .utf8)!
    static let jsonNameNilData = jsonNameNil.data(using: .utf8)!
    static let jsonNameMissingElementData = jsonNameMissingElement.data(using: .utf8)!
    static let jsonNameNewElementData = jsonNameNewElement.data(using: .utf8)!
    static let jsonData = json.data(using: .utf8)!
    static let jsonWithNewElementData = jsonWithNewElement.data(using: .utf8)!
    static let jsonWithMissingElementData = jsonWithMissingElement.data(using: .utf8)!
    
    // MARK: Dictionaries
    
//    static let dictionaryName = [
//        Key.Name.first: "Alex",
//        Key.Name.last: "Nagy"
//    ]
//    
//    static let dictionaryNameNil = [
//        Key.Name.first: "Alex",
//        Key.Name.last: nil
//    ]
//    
//    static let dictionaryNameMissingElement = [
//        Key.Name.first: "Alex"
//    ]
//    
//    static let dictionaryNameNewElement = [
//        Key.Name.first: "Alex",
//        "middle": "Rebeloper",
//        Key.Name.last: "Nagy"
//    ]
    
}
