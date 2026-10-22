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
        dc.register(APIClientProtocol.self) { APIClient() }
        dc.register(RepresentativeDataAccessProtocol.self) { RepresentativeDataAccess() }
        dc.register(RepresentativeServiceProtocol.self) { RepresentativeService() }
    }
    
    var body: some Scene {
        WindowGroup {
            TabView {
                Tab(.representativesTitle, systemImage: "person.3") {
                    RepresentativeListView()
                }
            }
        }
    }
}
