//
//  Models.swift
//  Moonshot
//
//  Created by Ibukunoluwa Soyebo on 27/09/2021.
//

import Foundation

struct User: Codable {
    var name: String
    var address: Address
}

struct Address: Codable {
    var street: String
    var city: String
}

struct Astronaut: Codable, Identifiable {
    let id: String
    let name: String
    let description: String
}

struct Mission: Codable, Identifiable{
    struct CrewRole:Codable{
        let name:String
        let role:String
    }

    let id:Int
    let launchDate: String?
    let crew:[CrewRole]
    let description:String
}


