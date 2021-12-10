//
//  UserRow.swift
//  SearchUser
//
//  Created by user204006 on 12/9/21.
//

import SwiftUI

struct UserRow: View {
    let user: User
    var body: some View {
        HStack {
            VStack (alignment: .leading, spacing: 5) {
                Text(user.name)
                    .font(.headline)
                Text(user.phone)
                    
            }
        }
    }
}

struct UserRow_Previews: PreviewProvider {
    static var previews: some View {
        UserRow(user: User.example1())
            .previewLayout(.fixed(width: 300, height: 200))
    }
}
