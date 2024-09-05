//
//  ContentViewModel.swift
//  SnapScene
//
//  Created by Aydın KAYA on 31.08.2024.
//

import Foundation
import Firebase
import FirebaseAuth
import Combine

class ContentViewModel: ObservableObject {
    
    private let service = AuthService.shared
    private var cancellables = Set<AnyCancellable>()
    
    @Published var userSession: FirebaseAuth.User?
    @Published var errorMessage: String?
    
    init(userSession: FirebaseAuth.User? = nil) {
        self.userSession = userSession
        setupSubscribers()
    }
    
    // ************
    
     func setupSubscribers() {
        service.$userSession
            .sink { [weak self] userSession in    // retain cycle (hafıza sızıntısı riskini engellemek)
                self?.userSession = userSession
            }
            .store(in: &cancellables)
    }
    
    // ************
    
    func login(email: String, password: String) {
        Task {
            do {
                try await service.login(withEmail: email, password: password)
            } catch {
                self.errorMessage = "Failed to login: \(error.localizedDescription)"
            }
        }
    }
    
    
    func createUser(email: String, password: String, username: String) {
        Task {
            do {
                try await service.createUser(email: email, password: password, username: username)
            } catch {
                self.errorMessage = "Failed to create user: \(error.localizedDescription)"
            }
        }
    }
    
    func signout() {
        Task {
            do {
                try await service.signout()
            } catch {
                self.errorMessage = "Failed to sign out: \(error.localizedDescription)"
            }
        }
    }
}
