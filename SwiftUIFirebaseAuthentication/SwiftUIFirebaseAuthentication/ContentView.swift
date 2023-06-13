//
//  ContentView.swift
//  SwiftUIFirebaseAuthentication
//
//  Created by Bonginkosi Tshabalala on 2023/06/13.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var contentVM: ContentViewModel
    
    var body: some View {
        Group {
            if contentVM.userSession != nil {
                MainScreen()
            } else {
                LoginView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
