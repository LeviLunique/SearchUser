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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct UserDetailView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailView(user: User.example1())
    }
}
