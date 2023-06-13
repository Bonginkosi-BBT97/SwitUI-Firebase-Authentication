//
//  ContentViewModel.swift
//  SwiftUIFirebaseAuthentication
//
//  Created by Bonginkosi Tshabalala on 2023/06/13.
//


import SwiftUI
import FirebaseAuth

class ContentViewModel: ObservableObject {
    
    let auth = Auth.auth()
    
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        userSession = auth.currentUser
    }
    
    @MainActor
    func createUser(withEmail email: String, password: String) async {
        do {
           let authDataResults =  try await auth.createUser(withEmail: email, password: password)
            userSession = authDataResults.user
            
            print("Dubug: User create successfully")
        } catch {
            print("Debug: Failed to create user with error \(error.localizedDescription)")
        }
    }
    @MainActor
    func signIn(withEmail email: String, password: String) async {
        do {
            let authDataResults = try await auth.signIn(withEmail: email, password: password)
            userSession = authDataResults.user
            print("Dubug: User signed in successfully")

        } catch {
            print("Debug: Failed to sign in user with error \(error.localizedDescription)")
        }
    }
    
    @MainActor
    func signout() {
        do {
           try auth.signOut()
            userSession = nil
            print("Dubug: User signed out successfully")
        } catch {
            print("Debug: Failed to sign out user with error \(error.localizedDescription)")
        }
    }
}
