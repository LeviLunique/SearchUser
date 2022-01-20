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
        VStack {
            Text(user.name)
                .font(.title)
                .fontWeight(.medium)
            Form {
                HStack {
                    Text("Username")
                    Spacer()
                    Text(user.username)
                        .foregroundColor(.gray)
                        .font(.callout)
                }
                HStack {
                    Text("Phone")
                    Spacer()
                    
                    
                    Button(action: {
                        let phoneNumber = user.phone
                        let tel = "tel://"
                        let cleanString =
                        phoneNumber.filter("0123456789.".contains)
                        
                        var formattedString = tel + cleanString
                        print(formattedString)
                        
                        guard let url = URL(string: formattedString) else { return }
                        UIApplication.shared.open(url)
                        
                        
                        
                    }) {
                        Text(user.phone)
                            .foregroundColor(.blue)
                            .font(.callout)
                    }
                    
                }
                HStack {
                    Text("Email")
                    Spacer()
                    Text(user.email)
                        .foregroundColor(.gray)
                        .font(.callout)
                }
            }
        }
    }
}

struct UserDetailView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailView(user: User.example1())
    }
}
