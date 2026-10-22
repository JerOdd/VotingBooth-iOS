//
//  RepresentativeListViewModel.swift
//  VotingBooth
//
//  Created by Jérémy Oddos on 20/10/2026.
//

import Foundation
import Observation

@Observable
final class RepresentativeListViewModel {
    var representatives: [Representative] = []
    var searchText: String = ""
    
    var filteredRepresentatives: [Representative] {
        guard !searchText.isEmpty else { return representatives }
        
        return representatives.filter {
            $0.fullName.localizedStandardContains(searchText)
            || $0.groupShortName.localizedStandardContains(searchText)
        }
    }
    
    @ObservationIgnored @Inject private var representativeService: RepresentativeServiceProtocol
    
    @MainActor
    func load() async {
        representatives = (try? await representativeService.fetchRepresentatives()) ?? []
    }
}
