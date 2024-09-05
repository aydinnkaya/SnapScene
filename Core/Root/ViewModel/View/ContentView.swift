//
//  ContentView.swift
//  SnapScene
//
//  Created by Aydın KAYA on 23.07.2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    @StateObject var registerViewModel  = RegisterViewModel()
    var body: some View {
        
        Group{
            if let errorMessage = viewModel.errorMessage {
                Text(errorMessage)
                    .foregroundColor(.red)
            }
            if viewModel.userSession == nil {
                LoginView()
                    .environmentObject(registerViewModel) // Loginview with all page 
            }
            else {
                MainTabView()
            }
        }.onAppear {
            viewModel.setupSubscribers()
        }
        
        
        
    }
}

#Preview {
    ContentView()
}
