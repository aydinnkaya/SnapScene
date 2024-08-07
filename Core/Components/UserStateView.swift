//
//  UserStatView.swift
//  SnapScene
//
//  Created by Aydın KAYA on 7.08.2024.
//

import SwiftUI

struct UserStateView: View {
    let value : Int
    let title : String
    var body: some View {
         VStack{
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            Text(title)
                .font(.subheadline)
                .fontWeight(.bold)
        }
         .frame(width: 76)
    }
}

#Preview {
    UserStateView(value: 10, title: "posts")
}
