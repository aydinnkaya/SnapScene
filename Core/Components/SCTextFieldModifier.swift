//
//  SCTextFieldModifier.swift
//  SnapScene
//
//  Created by Aydın KAYA on 19.08.2024.
//

import SwiftUI

struct SCTextFieldModifier: ViewModifier {
 
    func body(content: Content) ->  some View {
        
        content
            .font(.subheadline)
            .padding(16)
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.horizontal, 12)
    }
}
