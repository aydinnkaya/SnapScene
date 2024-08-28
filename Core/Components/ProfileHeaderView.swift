//
//  ProfileHeaderView.swift
//  SnapScene
//
//  Created by Aydın KAYA on 28.08.2024.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    let user : User
    
    var posts : [Post] {
        return Post.MOCK_POST.filter({$0.user?.username == user.username})
    }
    
    
    var body: some View {
        
        VStack(spacing: 10){
            HStack{
                Image(user.profileImageUrl ?? "")
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
                
                if let fullName = user.fullName {
                    Text(fullName)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
                if let bio = user.bio{
                    Text(bio)
                        .font(.footnote)
                }
                
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
              
                
            }.padding(.horizontal)
            Divider()
            
        }
    }
}

#Preview {
    ProfileHeaderView(user: User.MOCK_USER[0])
}
