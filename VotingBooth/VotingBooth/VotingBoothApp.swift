//
//  VotingBoothApp.swift
//  VotingBooth
//
//  Created by Jérémy Oddos on 20/10/2026.
//

import SwiftUI

@main
struct VotingBoothApp: App {
    @State private var dependencyContainer: DependencyContainer()
    
    var body: some Scene {
        WindowGroup {
            RepresentativeListView().environment(container)
        }
    }
}
