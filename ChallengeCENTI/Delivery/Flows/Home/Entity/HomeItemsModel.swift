//
//  HomeItemsModel.swift
//  ChallengeCENTI
//
//  Created by Yennifer Hurtado Arce on 2/07/23.
//

import Foundation

struct HomeItemModel: Decodable {
    let data: [DataModel]
}

struct DataModel: Decodable {
    
    let id: Int
    let userId: Int
    let title: String
    let body: String

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case userId = "user_id"
        case title = "title"
        case body = "body"
    }
}
