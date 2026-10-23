//
//  LawService.swift
//  VotingBooth
//
//  Created by Jérémy Oddos on 22/10/2026.
//

protocol LawServiceProtocol {
    
    func fetchLaws() async throws -> [Law]
    
}

class LawService: LawServiceProtocol {
    
    @Inject private var lawDataAccess: LawDataAccessProtocol
    
    func fetchLaws() async throws -> [Law] {
        return try await lawDataAccess.fetchLaws()
    }
    
}
