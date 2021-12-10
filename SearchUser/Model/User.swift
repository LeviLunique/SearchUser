//
//  User.swift
//  SearchUser
//
//  Created by user204006 on 12/1/21.
//

import Foundation

struct User: Identifiable, Decodable {
    
    
    var id: Int
    var name: String
    var username: String
    var email: String
    var phone: String
    
        
    static func example1() -> User {
        return User(
            id: 1,
            name: "Leanne Graham",
            username: "Bret",
            email: "Sincere@april.biz",
            phone: "1-770-736-8031 x56442"
        )
    }
}
