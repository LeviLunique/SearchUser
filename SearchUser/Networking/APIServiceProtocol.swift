//
//  APIServiceProtocol.swift
//  SearchUser
//
//  Created by user204006 on 12/9/21.
//

import Foundation

protocol APIServiceProtocol {
    func fetchUsers(url: URL?, completion: @escaping(Result<[User], APIError>) -> Void)
    
}
