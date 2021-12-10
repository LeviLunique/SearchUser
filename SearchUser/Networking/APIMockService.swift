//
//  APIMockService.swift
//  SearchUser
//
//  Created by user204006 on 12/9/21.
//

import Foundation

struct APIMockService: APIServiceProtocol {
    
    var result: Result<[User], APIError>
    
    func fetchUsers(url: URL?, completion: @escaping(Result<[User], APIError>) -> Void) {
        completion(result)
    }
}
