//
//  UserListView.swift
//  SearchUser
//
//  Created by user204006 on 12/6/21.
//

import SwiftUI

struct UserListView: View {
    let users: [User]
    
    @State private var searchText: String = ""
    @State private var isEditing = false
    
    var filteredUsers: [User] {
        if searchText.count == 0 {
            return users
        } else {
            return users.filter { $0.name.contains(searchText)}
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(filteredUsers) { user in
                    NavigationLink {
                        UserDetailView(user: user)
                    } label: {
                        UserRow(user: user)
                    }
                    
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Search User")
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
            
        }
        
        
    }
}

struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView(users: UserFetcher.successState().users)
    }
}
