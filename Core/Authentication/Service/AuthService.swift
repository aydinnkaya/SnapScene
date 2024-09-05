//
//  AuthService.swift
//  SnapScene
//
//  Created by Aydın KAYA on 31.08.2024.
//

import Foundation
import FirebaseAuth
import Combine

class AuthService { // User Session
    
    @Published var userSession: FirebaseAuth.User?
    private var cancellables = Set<AnyCancellable>()
    
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    func login(withEmail email: String, password: String) async throws {
        do {
            let authResult = try await Auth.auth().signIn(withEmail: email, password: password)
            userSession = authResult.user
        } catch {
            throw error
        }
    }
    

    func createUser(email: String, password: String, username: String) async throws {
        do {
            let authResult = try await Auth.auth().createUser(withEmail: email, password: password)
                self.userSession = authResult.user
            // Save the username in database or profile settings
        } catch {
            throw error
        }
    }
    
    func loadUserData() async throws {
        // Implement your logic to load user data
        do {
            // For example, load user details from Firestore
        } catch {
            throw error
        }
    }
    

    func signout() async throws {
        do {
            try Auth.auth().signOut()
            userSession = nil
        } catch {
            throw error
        }
    }
}
