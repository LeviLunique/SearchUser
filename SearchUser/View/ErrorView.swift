//
//  ErrorView.swift
//  SearchUser
//
//  Created by user204006 on 12/6/21.
//

import SwiftUI

struct ErrorView: View {
    @ObservedObject var userFetcher: UserFetcher
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(userFetcher: UserFetcher())
    }
}
