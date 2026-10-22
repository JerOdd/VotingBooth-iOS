//
//  RepresentativeDataAccess.swift
//  VotingBooth
//
//  Created by Jérémy Oddos on 20/10/2026.
//

protocol RepresentativeDataAccessProtocol {
    func fetchRepresentatives() async throws -> [Representative]
}

actor RepresentativeDataAccess: RepresentativeDataAccessProtocol {
    func fetchRepresentatives() async throws -> [Representative] {
        return []
    }
}
