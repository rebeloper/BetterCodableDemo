//
//  ViewController.swift
//  BetterCodableDemo
//
//  Created by Alex Nagy on 23/06/2020.
//  Copyright © 2020 Alex Nagy. All rights reserved.
//

import UIKit
import SparkUI
import BetterCodable

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // MARK: - 1. Basic struct
        
//        let name = Name(first: "Alex", last: "Nagy")
        
        // MARK: - 2. Basic struct with initialzier
        
//        var name = Name()
//        name.first = "Alex"
//        name.last = "Nagy"
        
        // MARK: - 3. Codable struct with decoder
        
//        do {
//            let name = try JSONDecoder().decode(Name.self, from: Data.jsonNameData)
//            print("Exact Name -> \(name)")
//        } catch {
//            print(error)
//        }
        
//        do {
//            let name = try JSONDecoder().decode(Name.self, from: Data.jsonNameNilData)
//            print("Nil Name -> \(name)")
//        } catch {
//            print(error)
//        }
        
//        do {
//            let name = try JSONDecoder().decode(Name.self, from: Data.jsonNameMissingElementData)
//            print("Missing Element Name -> \(name)")
//        } catch {
//            print(error)
//        }
        
//        do {
//            let name = try JSONDecoder().decode(Name.self, from: Data.jsonNameNewElementData)
//            print("New Element Name -> \(name)")
//        } catch {
//            print(error)
//        }
        
        // MARK: - 4. Codable struct with array
        
//        do {
//            let user = try JSONDecoder().decode(User.self, from: Data.jsonData)
////            let user = try JSONDecoder().decode(User.self, from: Data.jsonWithMissingElementData)
////            let user = try JSONDecoder().decode(User.self, from: Data.jsonWithNewElementData)
//            print("User -> \(user)")
//            dump(user)
//        } catch {
//            print(error)
//        }
        
        // no need to do all of this
//        let decoder = JSONDecoder()
//        decoder.keyDecodingStrategy = .convertFromSnakeCase // set decoder properties if needed
//
//        do {
//            let user = try decoder.decode(User.self, from: Data.jsonData)
//            print(user.posts.count)
//        } catch let DecodingError.typeMismatch(type, context)  {
//           print("Decoder -> Type '\(type)' mismatch:", context.debugDescription)
//           print("Decoder -> CodingPath:", context.codingPath)
//        } catch let DecodingError.keyNotFound(key, context)  {
//           print("Decoder -> Key '\(key)' not found:", context.debugDescription)
//           print("Decoder -> CodingPath:", context.codingPath)
//        } catch let DecodingError.valueNotFound(type, context)  {
//           print("Decoder -> Value '\(type)' not found:", context.debugDescription)
//           print("Decoder -> CodingPath:", context.codingPath)
//        } catch {
//            print("Decoder -> \(error.localizedDescription))")
//        }
        
        // MARK: - 4. BetterCodable with SparkUI
        
//        let name = Name(with: Data.dictionaryName)
//        print(name)
        
    }


}

extension ViewController {
    
    // MARK: - 1. Basic struct
    
//    struct Name {
//        var first: String
//        var last: String
//    }
    
    // MARK: - 2. Basic struct with initialzier
    
//    struct Name {
//        var first: String
//        var last: String
//
//        init() {
//            self.first = ""
//            self.last = ""
//        }
//    }
    
    // MARK: - 3. Codable struct with decoder
    
//    struct Name: Codable {
//        var first: String
//        var last: String
//
//        init(from decoder: Decoder) throws {
//            let container = try decoder.container(keyedBy: CodingKeys.self)
//
//            self.first = try container.decodeIfPresent(String.self, forKey: .first) ?? ""
//            self.last = try container.decodeIfPresent(String.self, forKey: .last) ?? ""
//        }
//
//        init() {
//            self.first = ""
//            self.last = ""
//        }
//    }
    
    // MARK: - 4. Codable struct with array
    
//    struct User: Codable {
//        var name: Name
//        var userName: String
//        var age: Int
//        var posts: [Post?]
//
//        init(from decoder: Decoder) throws {
//            let container = try decoder.container(keyedBy: CodingKeys.self)
//
//            self.name = try container.decodeIfPresent(Name.self, forKey: .name) ?? Name()
//            self.userName = try container.decodeIfPresent(String.self, forKey: .userName) ?? ""
//            self.age = try container.decodeIfPresent(Int.self, forKey: .age) ?? 1
//            self.posts = try container.decodeIfPresent([Post?].self, forKey: .posts) ?? [Post?]()
//        }
//
//        init() {
//            self.name = Name()
//            self.userName = ""
//            self.age = 0
//            self.posts = [Post?]()
//        }
//    }
//
//    struct Name: Codable {
//        var first: String
//        var last: String
//
//        init(from decoder: Decoder) throws {
//            let container = try decoder.container(keyedBy: CodingKeys.self)
//
//            self.first = try container.decodeIfPresent(String.self, forKey: .first) ?? ""
//            self.last = try container.decodeIfPresent(String.self, forKey: .last) ?? ""
//        }
//
//        init() {
//            self.first = ""
//            self.last = ""
//        }
//    }
//
//    struct Post: Codable {
//        var title: String
//        var message: String
//
//        init(from decoder: Decoder) throws {
//            let container = try decoder.container(keyedBy: CodingKeys.self)
//
//            self.title = try container.decodeIfPresent(String.self, forKey: .title) ?? ""
//            self.message = try container.decodeIfPresent(String.self, forKey: .message) ?? ""
//        }
//
//        init() {
//            self.title = ""
//            self.message = ""
//        }
//    }
}

// MARK: - 4. BetterCodable with SparkUI

//struct Post: Codable {
//
//    // MARK: - Properties
//
//    @DefaultEmptyString var title: String
//    @DefaultEmptyString var message: String
//
//    // MARK: - Initializer
//
//    init(title: String? = nil,
//         message: String? = nil) {
//        self.title = title ?? String.empty
//        self.message = message ?? String.empty
//    }
//
//    init(with dictionary: [String: Any]? = nil) {
//        title = dictionary?[Key.Post.title] as? String ?? String.empty
//        message = dictionary?[Key.Post.message] as? String ?? String.empty
//    }
//
//    // MARK: - Dictionary
//
//    func dictionary(mapped: Bool = false) -> [String: Any] {
//        if mapped {
//            return [
//                Key.Post.title: title,
//                Key.Post.message: message
//            ]
//        } else {
//            return [
//                Key.Post.title: title,
//                Key.Post.message: message
//            ]
//        }
//    }
//
//}
//
//// MARK: - Property Wrapper
//
//struct DefaultEmptyPostStrategy: DefaultCodableStrategy {
//    static var defaultValue: Post { return Post() }
//}
//typealias DefaultEmptyPost = DefaultCodable<DefaultEmptyPostStrategy>
//
//// MARK: - Keys
//
//extension Key {
//    struct Post {
//        static let title = "title"
//        static let message = "message"
//    }
//}
//
//struct Name: Codable {
//
//    // MARK: - Properties
//
//    @DefaultEmptyString var first: String
//    @DefaultEmptyString var last: String
//
//    // MARK: - Initializer
//
//    init(first: String? = nil,
//         last: String? = nil) {
//        self.first = first ?? String.empty
//        self.last = last ?? String.empty
//    }
//
//    init(with dictionary: [String: Any]? = nil) {
//        first = dictionary?[Key.Name.first] as? String ?? String.empty
//        last = dictionary?[Key.Name.last] as? String ?? String.empty
//    }
//
//    // MARK: - Dictionary
//
//    func dictionary(mapped: Bool = false) -> [String: Any] {
//        if mapped {
//            return [
//                Key.Name.first: first,
//                Key.Name.last: last
//            ]
//        } else {
//            return [
//                Key.Name.first: first,
//                Key.Name.last: last
//            ]
//        }
//    }
//
//}
//
//// MARK: - Property Wrapper
//
//struct DefaultEmptyNameStrategy: DefaultCodableStrategy {
//    static var defaultValue: Name { return Name() }
//}
//typealias DefaultEmptyName = DefaultCodable<DefaultEmptyNameStrategy>
//
//// MARK: - Keys
//
//extension Key {
//    struct Name {
//        static let first = "first"
//        static let last = "last"
//    }
//}
//
//struct User: Codable {
//
//    // MARK: - Properties
//
//    @DefaultEmptyName var name: Name
//    @DefaultEmptyString var userName: String
//    @DefaultZeroInt var age: Int
//    @DefaultEmptyArray var posts: [Post]
//
//    // MARK: - Initializer
//
//    init(name: Name? = nil,
//         userName: String? = nil,
//         age: Int? = nil,
//         posts: [Post]? = nil) {
//        self.name = name ?? Name()
//        self.userName = userName ?? String.empty
//        self.age = age ?? Int.zero
//        self.posts = posts ?? [Post]()
//    }
//
//    init(with dictionary: [String: Any]? = nil) {
//        name = dictionary?[Key.User.name] as? Name ?? Name()
//        userName = dictionary?[Key.User.userName] as? String ?? String.empty
//        age = dictionary?[Key.User.age] as? Int ?? Int.zero
//        posts = dictionary?[Key.User.posts] as? [Post] ?? [Post].empty()
//    }
//
//    // MARK: - Dictionary
//
//    func dictionary(mapped: Bool = false) -> [String: Any] {
//        if mapped {
//
//            var nameMappedDictionary = [String: Any]()
//            nameMappedDictionary = name.dictionary(mapped: true)
//
//            var postsMappedDictionary = [[String: Any]]()
//            for post in posts {
//                postsMappedDictionary.append(post.dictionary(mapped: true))
//            }
//
//            return [
//                Key.User.name: nameMappedDictionary,
//                Key.User.userName: userName,
//                Key.User.age: age,
//                Key.User.posts: postsMappedDictionary
//            ]
//        } else {
//            return [
//                Key.User.name: name,
//                Key.User.userName: userName,
//                Key.User.age: age,
//                Key.User.posts: posts
//            ]
//        }
//    }
//
//}
//
//// MARK: - Property Wrapper
//
//struct DefaultEmptyUserStrategy: DefaultCodableStrategy {
//    static var defaultValue: User { return User() }
//}
//typealias DefaultEmptyUser = DefaultCodable<DefaultEmptyUserStrategy>
//
//// MARK: - Keys
//
//extension Key {
//    struct User {
//        static let name = "name"
//        static let userName = "userName"
//        static let age = "age"
//        static let posts = "posts"
//    }
//}


