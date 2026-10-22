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
        dc.register(LawDataAccessProtocol.self) { LawDataAccess() }
        dc.register(RepresentativeDataAccessProtocol.self) { RepresentativeDataAccess() }
        dc.register(LawServiceProtocol.self) { LawService() }
        dc.register(RepresentativeServiceProtocol.self) { RepresentativeService() }
    }
    
    var body: some Scene {
        WindowGroup {
            TabView {
                Tab(.lawsTitle, systemImage: "person.3") {
                    LawListView()
                }
                
                Tab(.representativesTitle, systemImage: "person.3") {
                    RepresentativeListView()
                }
            }
        }
    }
}
