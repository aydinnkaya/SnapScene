//
//  LoginViewModel.swift
//  SnapScene
//
//  Created by Aydın KAYA on 5.09.2024.
//

import Foundation


class LoginViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage: String?
    
    func login() async throws {
        do {
            try await AuthService.shared.login(withEmail: email, password: password)
        } catch {
            self.errorMessage = "Failed to login: \(error.localizedDescription)"
        }
    }
    
    
    
    
  
}

