//
//  LawListViewModel.swift
//  VotingBooth
//
//  Created by Jérémy Oddos on 22/10/2026.
//

import Foundation
import Observation

@Observable
final class LawListViewModel {
    var laws: [Law] = []
    
    @ObservationIgnored @Inject private var lawService: LawServiceProtocol
    
    @MainActor
    func load() async {
        laws = (try? await lawService.fetchLaws()) ?? []
    }
}
