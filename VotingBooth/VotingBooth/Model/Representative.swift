//
//  Representative.swift
//  VotingBooth
//
//  Created by Jérémy Oddos on 20/10/2026.
//

nonisolated struct RepresentativesResponse: Decodable {
    let representatives: [Representative]
}

nonisolated struct Representative: Identifiable, Decodable {
    let id: String
    let firstName: String
    let lastName: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case firstName = "first_name"
        case lastName = "last_name"
    }
}
