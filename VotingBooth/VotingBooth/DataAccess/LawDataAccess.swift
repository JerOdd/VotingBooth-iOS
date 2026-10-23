//
//  LawDataAccess.swift
//  VotingBooth
//
//  Created by Jérémy Oddos on 22/10/2026.
//

import Foundation

protocol LawDataAccessProtocol {
    func fetchLaws() async throws -> [Law]
}

class LawDataAccess: LawDataAccessProtocol {
    
    @Inject private var apiClient: APIClientProtocol
    
    func fetchLaws() async throws -> [Law] {
        let lawsResponse: LawsResponse = try await apiClient.get("laws")
        return lawsResponse.laws
    }
    
}
