//
//  DependencyContainer.swift
//  VotingBooth
//
//  Created by Jérémy Oddos on 20/10/2026.
//

import Observation

@Observable
final class DependencyContainer {
    let representativeService: RepresentativeServiceProtocol
    
    init(representativeService: RepresentativeServiceProtocol = RepresentativeService()) {
        self.representativeService = representativeService
    }
}
