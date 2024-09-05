//
//  CurrentUserProfileView.swift
//  SnapScene
//
//  Created by Aydın KAYA on 28.08.2024.
//

import SwiftUI

struct CurrentUserProfileView: View {
    
    let user : User
    
    var posts : [Post] {
        return Post.MOCK_POST.filter({$0.user?.username == user.username})
    }
    
    
    var body: some View {
        NavigationStack() {
            ScrollView {
                VStack{
                    ProfileHeaderView(user: user)
                
                    PostGridView(posts: posts)
                }
                .navigationTitle("Profile")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    ToolbarItem(placement: .topBarTrailing) {
                        Button(action: {
                            Task{try await AuthService.shared.signout()}
                            
                        }, label: {
                            Image(systemName: "line.3.horizontal")
                                .tint(Color("buttonTextColor"))
                            
                        })
                    }
                }
            }
        }
    }
}

#Preview {
    CurrentUserProfileView(user: User.MOCK_USER[1])
}
