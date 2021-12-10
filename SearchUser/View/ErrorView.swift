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
        VStack {
            
            Text("🥲")
                .font(.system(size: 80))
            
            Text(userFetcher.errorMessage ?? "")
            
        }
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(userFetcher: UserFetcher())
    }
}
