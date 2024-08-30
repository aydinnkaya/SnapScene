//
//  Post.swift
//  SnapScene
//
//  Created by Aydın KAYA on 28.08.2024.
//

import Foundation


struct Post: Identifiable , Codable, Hashable {
    
    let id : String
    let ownerUid :  String
    let caption : String
    var likes : Int
    let imageUrl : String
    let timestamp : Date
    var user : User?
}

extension Post {
    static var MOCK_POST : [Post] = [
        
        .init(id: UUID().uuidString, ownerUid:  UUID().uuidString, caption: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", likes: 564, imageUrl: "monkey-1", timestamp: Date(), user: User.MOCK_USER[0]),
        .init(id: UUID().uuidString, ownerUid:  UUID().uuidString, caption: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", likes: 687, imageUrl: "monkey-2", timestamp: Date(), user: User.MOCK_USER[1]),
        .init(id: UUID().uuidString, ownerUid:  UUID().uuidString, caption: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", likes: 982, imageUrl: "monkey-3", timestamp: Date(), user: User.MOCK_USER[2]),
        .init(id: UUID().uuidString, ownerUid:  UUID().uuidString, caption: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", likes: 233, imageUrl: "monkey-4", timestamp: Date(), user: User.MOCK_USER[3]),
        .init(id: UUID().uuidString, ownerUid:  UUID().uuidString, caption: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", likes: 375, imageUrl: "monkey-5", timestamp: Date(), user: User.MOCK_USER[4]),
        
        
    ]
}
