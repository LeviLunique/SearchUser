//
//  LoadingView.swift
//  SearchUser
//
//  Created by user204006 on 12/6/21.
//

import SwiftUI

struct LoadingView: View {
    
    var body: some View {
        VStack(spacing: 100) {
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
            
            ProgressView()
           
        }
        
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
