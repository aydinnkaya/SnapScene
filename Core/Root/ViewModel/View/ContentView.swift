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
            if viewModel.userSession == nil {
                LoginView()
                    .environmentObject(registerViewModel)   // Loginview with all page
            }
            else if let currentUser = viewModel.currentUser{
                MainTabView(user: currentUser)
            }
        }.onAppear {
            viewModel.setupSubscribers()
        }
        
        
        
    }
}

#Preview {
    ContentView()
}
