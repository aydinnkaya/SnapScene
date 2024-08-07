//
//  ProfileView.swift
//  SnapScene
//
//  Created by Aydın KAYA on 31.07.2024.
//

import SwiftUI

struct ProfileView: View {
    
    
    private var gridItems: [GridItem] = [
        
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    
    /// <#Description#>
    var body: some View {
        
        
        NavigationStack() {
            ScrollView {
                VStack(spacing: 10){
                    
                    HStack{
                        Image("aydınKaya")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80,height: 80)
                            .clipShape(Circle())
                        Spacer()
                        HStack(spacing: 8){
                            UserStateView(value: 10, title: "post")
                            UserStateView(value: 192, title: "followers")
                            UserStateView(value: 233, title: "following")
                            
                        }
                    }
                    .padding(.horizontal)
                    
                    VStack(alignment: .leading,spacing: 2){
                        Text("Aydın Kaya")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text("Mobile App developer")
                            .font(.footnote)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                    HStack(){
                        Button(action: {
                            
                        }, label: {
                            Text("Edit profile")
                                .font(.subheadline)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .frame(width: 200,height: 40)
                                .foregroundStyle(Color("buttonTextColor"))
                                .overlay{
                                    RoundedRectangle(cornerRadius: 6)
                                        .stroke(.gray, lineWidth: 1)
                                    
                                }.background(Color(.systemGray3))
                        })
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Share rofile")
                                .font(.subheadline)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .frame(width: 200,height: 40)
                                .foregroundStyle(Color("buttonTextColor"))
                                .overlay{
                                    RoundedRectangle(cornerRadius: 6)
                                        .stroke(.gray, lineWidth: 1)
                                    
                                }
                                .background(Color(.systemGray3))
                            
                        })
                        Button(action: {
                            
                        }, label: {
                            
                        })
                        
                        
                        
                    }.padding(.horizontal)
                    Divider()
                    
                    LazyVGrid(columns: gridItems, spacing: 1) {
                        ForEach(0...30, id: \.self){ index in
                            Image("aydınKaya")
                                .resizable()
                                .scaledToFill()
                        }
                    }
                    
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {}, label: {
                        Image(systemName: "line.3.horizontal")
                            .tint(Color("buttonTextColor"))
                            
                    })
                }
            }
        }
        
    }
}

#Preview {
    ProfileView()
}
