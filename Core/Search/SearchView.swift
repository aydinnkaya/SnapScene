//
//  SearchView.swift
//  SnapScene
//
//  Created by Aydın KAYA on 14.08.2024.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack{
                    ForEach(User.MOCK_USER){ user in
                        NavigationLink(value: user) {
                            HStack(){
                                Image(user.profileImageUrl ?? "")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 50,height: 50)
                                    .clipShape(Circle())
                                
                                VStack(alignment: .leading){
                                    Text(user.username)
                                        .fontWeight(.semibold)
                                        .foregroundStyle(Color("buttonTextColor"))
                                        .font(.subheadline)
                                    
                                  
                                    
                                    if user.fullName != nil{
                                        Text(user.fullName ?? "")
                                        .foregroundStyle(Color("buttonTextColor"))
                                        .font(.footnote)
                                    }
                                       
                                }
                                .font(.footnote)
                                Spacer()
                            }.padding(.horizontal, 30)
                        }
                        
                    }
                }
                .searchable(text:$searchText, prompt: "Searchh..." )
            }
            .navigationDestination(for: User.self, destination: { user in
                ProfileView(user: user)
            })
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

#Preview {
    SearchView()
}
