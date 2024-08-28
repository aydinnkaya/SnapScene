//
//  FeedCellView.swift
//  SnapScene
//
//  Created by Aydın KAYA on 7.08.2024.
//

import SwiftUI

struct FeedCellView: View {
    
    let post : Post
    var body: some View {
        
        // Profile Image and User Name
        VStack {
            HStack(){
                
                if let user = post.user{
                 
                    Image(user.profileImageUrl ?? "")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80,height: 80)
                        .clipShape(Circle())
                    
                    Text(user.username)
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color("buttonTextColor"))
                    
                    Spacer()
                }
            }
        }
        
        // Post Image
        Image(post.imageUrl)
            .resizable()
            .scaledToFill()
            .frame(height: 400)
            .clipShape(Rectangle())

        

        // Action Button
        
        HStack(){
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "heart")
                    .imageScale(.large)
                
            })
            
            Button(action: {}, label: {
                Image(systemName: "bubble.right")
                    .imageScale(.large)
                
            })
            
            
          
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "paperplane")
                    .imageScale(.large)
                
            })
            
            
            Spacer()
        }
        .padding(.leading, 8)
        .padding(.top, 4)
        .foregroundStyle(Color("buttonTextColor"))
        
        
        // Number of likes
        
        
        Text("\(post.likes) likes")
            .font(.footnote)
            .fontWeight(.semibold)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 10 )
            .padding(.top, 1)
        
        
        // Explanation
        
        HStack(content: {
            Text("\(post.user?.username ?? "")")
                .fontWeight(.semibold)
                +
            Text("  \(post.caption)")
        })
        .frame(maxWidth: .infinity, alignment: .leading)
        .font(.footnote)
        .padding(.leading, 10)
        .padding(.top, 1)
        
        
        Text("\(post.timestamp)")
            .font(.footnote)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 10)
            .padding(.top, 1)
            .foregroundStyle(.gray)
            
        
    }
}

#Preview {
    FeedCellView(post: Post.MOCK_POST[0])
}
