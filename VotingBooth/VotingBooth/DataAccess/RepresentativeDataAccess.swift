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
    
    @Inject private var apiClient: APIClientProtocol
    
    func fetchRepresentatives() async throws -> [Representative] {
        let response: RepresentativesResponse = try await apiClient.get("representatives")
        return response.representatives
    }
}
