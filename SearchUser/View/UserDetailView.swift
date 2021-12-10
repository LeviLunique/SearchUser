//
//  UserDetailView.swift
//  SearchUser
//
//  Created by user204006 on 12/9/21.
//

import SwiftUI

struct UserDetailView: View {
    let user: User
    var body: some View {
        HStack {
            VStack (alignment: .leading, spacing: 5) {
                Text(user.name)
                    .font(.headline)
                Text(user.username)
                Text(user.email)
                Text(user.phone)
                    
            }
        }
    }
}

struct UserDetailView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailView(user: User.example1())
    }
}
