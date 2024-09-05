//
//  RegisterViewModel.swift
//  SnapScene
//
//  Created by Aydın KAYA on 1.09.2024.
//

import Foundation


class RegisterViewModel: ObservableObject {
    
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage: String? 
    
    func login() async throws {
        do {
            try await AuthService.shared.login(withEmail: email, password: password)
        } catch {
            throw error
        }
    }
    
    func createUser() async throws {
        do {
            try await AuthService.shared.createUser(email: email, password: password, username: username)
        } catch {
            throw error
        }
    }
    
    func signout() async throws {
        do {
            try await AuthService.shared.signout()
        } catch {
            throw error
        }
    }
}
