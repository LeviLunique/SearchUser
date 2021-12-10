//
//  UserListView.swift
//  SearchUser
//
//  Created by user204006 on 12/6/21.
//

import SwiftUI

struct UserListView: View {
    let users: [User]
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    NavigationLink {
                        UserDetailView(user: user)
                    } label: {
                        UserRow(user: user)
                    }
                    
                }
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Agenda CFO")
    }
}

struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView(users: UserFetcher.successState().users)
    }
}
