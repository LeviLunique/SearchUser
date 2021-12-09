//
//  UserFetcher.swift
//  SearchUser
//
//  Created by user204006 on 12/6/21.
//

import Foundation

class UserFetcher: ObservableObject {
    
    @Published var users = [User]()
    @Published var isLoading: Bool = false
    @Published var errorMessage: String? = nil
    
    init () {
        fetchAllUsers()
    }
    
    func fetchAllUsers () {
        
        isLoading = true
        errorMessage = nil
        let service = APIService()
        
        let url = URL(string: "")
        service.fetchUsers(url: url) { [unowned self] result in
            self.isLoading = false
            switch result {
            case .failure(let error):
                self.errorMessage = error.localizedDescription
                // print(error.description)
                print(error)
            case .success(let users):
                self.users = users
            }
        }
    }

}
