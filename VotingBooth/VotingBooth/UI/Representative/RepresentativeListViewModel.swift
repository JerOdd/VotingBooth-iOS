//
//  RepresentativeListViewModel.swift
//  VotingBooth
//
//  Created by Jérémy Oddos on 20/10/2026.
//

import Observation

@Observable
final class RepresentativeListViewModel {
    var representatives: [Representative] = []
    @ObservationIgnored @Inject private var representativeService: RepresentativeServiceProtocol
    
    @MainActor
    func load() async {
        representatives = (try? await representativeService.fetchRepresentatives()) ?? []
    }
}
