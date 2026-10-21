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
    
    private let representativeDataAccess: RepresentativeDataAccessProtocol
    
    init(representativeDataAccess: RepresentativeDataAccessProtocol) {
        self.representativeDataAccess = representativeDataAccess
    }
    
}
