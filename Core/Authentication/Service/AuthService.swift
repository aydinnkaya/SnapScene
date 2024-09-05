//
//  AuthService.swift
//  SnapScene
//
//  Created by Aydın KAYA on 31.08.2024.
//

import Foundation
import FirebaseAuth
import Combine
import Firebase
import FirebaseFirestore

class AuthService { // User Session
    
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    
    static let shared = AuthService()
    
    init() {
       
        
        Task{	 loadUserData}
    }
    
    
    @MainActor
    func login(withEmail email: String, password: String) async throws {
        do {
            let authResult = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = authResult.user
        } catch {
            self.errorMessage = "Failed to login: \(error.localizedDescription)"
        }
    }
    
    @MainActor
    func createUser(email: String, password: String, username: String) async throws {
        do {
            let authResult = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = authResult.user
            try await uploadUserData(uid: authResult.user.uid, username: username, email :email)
            
        } catch {
            throw error
        }
    }
    
    func uploadUserData(uid:String,username: String, email : String) async throws {
        do {
            let user = User(id: uid, username: username, email: email)
            guard let encoder = try? Firestore.Encoder().encode(user) else {return}
            try await Firestore.firestore().collection("users").document(user.id).setData(encoder)
            
        } catch {
            throw error
        }
    }
    
    func loadUserData() async throws{
        
        do {
            self.userSession = Auth.auth().currentUser
            guard let currentUid = userSession?.uid else {return}
            let snapshot = try await Firestore.firestore().collection("users").document(currentUid).getDocument()
            self.currentUser = try? snapshot.data(as: User.self)
            
            
            
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
