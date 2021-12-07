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
        
        //TODO: show error if cannot create url
        let url = URL(string: "https://jsonplaceholder.typicode.com/users")!
        
        let task = URLSession.shared.dataTask(with: url) {[unowned self] (data, response, error) in
            
            
            DispatchQueue.main.async {
                self.isLoading = false
            }
            let decoder = JSONDecoder()
            
            if let data = data {
                
                do {
                    let users = try decoder.decode([User].self, from: data)
                    
                    DispatchQueue.main.async {
                        self.users = users
                    }
                    
                } catch {
                    //TODO: show error
                    print (error)
                }
            }
        }
        
        task.resume()
    }
    
}
