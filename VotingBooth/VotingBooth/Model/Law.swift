//
//  Law.swift
//  VotingBooth
//
//  Created by Jérémy Oddos on 22/10/2026.
//

struct LawsResponse: Decodable {
    
    let laws: [Law]
    
}

struct Law: Identifiable, Decodable {
    let id: String
    let title: String
}
