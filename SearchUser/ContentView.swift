//
//  ContentView.swift
//  SearchUser
//
//  Created by user204006 on 12/1/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var userFetcher = UserFetcher()
    var body: some View {
        if userFetcher.isLoading {
            LoadingView()
        } else if userFetcher.errorMessage != nil {
            ErrorView(userFetcher: userFetcher)
        } else {
            UserListView(users: userFetcher.users)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
