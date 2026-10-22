//
//  Representative.swift
//  VotingBooth
//
//  Created by Jérémy Oddos on 20/10/2026.
//

import Foundation

nonisolated struct RepresentativesResponse: Decodable {
    let representatives: [Representative]
}

nonisolated struct Representative: Identifiable, Decodable {
    let id: String
    let firstName: String
    let lastName: String
    let photoUrl: URL
    let groupShortName: String
    let groupColor: String
    
    var fullName: String {
        var components = PersonNameComponents()
        components.givenName = firstName
        components.familyName = lastName
        return components.formatted()
    }
}
