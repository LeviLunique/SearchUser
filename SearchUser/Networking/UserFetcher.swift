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
    
    let service: APIServiceProtocol
    
    init (service: APIServiceProtocol = APIService()) {
        self.service = service
        fetchAllUsers()
    }
    
    func fetchAllUsers () {
        
        isLoading = true
        errorMessage = nil
        
        
        let url = URL(string: "https://jsonplaceholder.typicode.com/users")
        service.fetchUsers(url: url) { [unowned self] result in
            
            DispatchQueue.main.async {
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
    
    // MARK: preview helpers
    
    static func errorState() -> UserFetcher {
        let fetcher = UserFetcher()
        fetcher.errorMessage = APIError.url(URLError.init(.notConnectedToInternet)).localizedDescription
        return fetcher
    }
    
    static func successState() -> UserFetcher {
        let fetcher = UserFetcher()
        fetcher.users = [User.example1()]
        return fetcher
    }

}
