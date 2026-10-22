//
//  RepresentativeService.swift
//  VotingBooth
//
//  Created by Jérémy Oddos on 20/10/2026.
//

protocol RepresentativeServiceProtocol {
    func fetchRepresentatives() async throws -> [Representative]
}

class RepresentativeService: RepresentativeServiceProtocol {
    
    @Inject private var representativeDataAccess: RepresentativeDataAccessProtocol
    
    func fetchRepresentatives() async throws -> [Representative] {
        return try await representativeDataAccess.fetchRepresentatives()
    }
    
}
