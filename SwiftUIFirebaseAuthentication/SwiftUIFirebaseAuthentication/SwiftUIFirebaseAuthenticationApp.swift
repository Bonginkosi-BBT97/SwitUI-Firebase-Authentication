//
//  SwiftUIFirebaseAuthenticationApp.swift
//  SwiftUIFirebaseAuthentication
//
//  Created by Bonginkosi Tshabalala on 2023/06/13.
//

import SwiftUI
import FirebaseCore

@main
struct SwiftUIFirebaseAuthenticationApp: App {
    
    @StateObject var contentVM = ContentViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(contentVM)
        }
    }
}
