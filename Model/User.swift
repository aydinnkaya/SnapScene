//
//  User.swift
//  SnapScene
//
//  Created by Aydın KAYA on 19.08.2024.
//

import Foundation


struct User : Identifiable , Codable, Hashable{
    
    let id : String
    var username : String
    var profileImageUrl: String?
    var fullName : String?
    var bio :String?
    let email :String
    
}

extension User {
    
    static var MOCK_USER: [User] = [
        
        .init(id: UUID().uuidString, username: "monkey1",profileImageUrl: "monkey-1",  fullName: "Monkey 1",bio: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",email: "monkey1@gmail.com"),
        
            .init(id: UUID().uuidString, username: "monkey2",profileImageUrl: "monkey-2",  fullName: "Monkey 2",bio: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",email: "monkey2@gmail.com"),
        
            .init(id: UUID().uuidString, username: "monkey3", profileImageUrl: "monkey-3",  fullName: "Monkey 3",bio: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",email: "monkey3@gmail.com"),
        
            .init(id: UUID().uuidString, username: "monkey4",profileImageUrl:"monkey-4",  fullName: "Monkey 4",bio: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",email: "monkey4@gmail.com"),
        
            .init(id: UUID().uuidString, username: "monkey5",profileImageUrl: "monkey-5",  fullName: "Monkey 5",bio: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",email: "monkey5@gmail.com")
        
        
        
        
    ]
}



