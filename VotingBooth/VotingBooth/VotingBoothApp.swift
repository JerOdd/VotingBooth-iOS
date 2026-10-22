//
//  VotingBoothApp.swift
//  VotingBooth
//
//  Created by Jérémy Oddos on 20/10/2026.
//

import SwiftUI

@main
struct VotingBoothApp: App {
    
    init() {
        let dc = DependencyContainer.shared
        dc.register(RepresentativeServiceProtocol.self) { RepresentativeService() }
    }
    
    var body: some Scene {
        WindowGroup {
            RepresentativeListView()
        }
    }
}
