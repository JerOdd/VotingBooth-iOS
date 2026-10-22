//
//  RepresentativeDataAccess.swift
//  VotingBooth
//
//  Created by Jérémy Oddos on 20/10/2026.
//

import Foundation

protocol RepresentativeDataAccessProtocol {
    func fetchRepresentatives() async throws -> [Representative]
}

actor RepresentativeDataAccess: RepresentativeDataAccessProtocol {
    func fetchRepresentatives() async throws -> [Representative] {
        guard let url = URL(string: "http://localhost:8085/representatives") else {
            return []
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        let response = try JSONDecoder().decode(RepresentativesResponse.self, from: data)
        return response.representatives
    }
}
