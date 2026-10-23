//
//  LawListView.swift
//  VotingBooth
//
//  Created by Jérémy Oddos on 22/10/2026.
//

import SwiftUI

struct LawListView: View {
    
    @State private var viewModel = LawListViewModel()
    
    var body: some View {
        NavigationStack {
            List(viewModel.laws) { law in
                NavigationLink(value: law) {
                    LawRow(law: law)
                }
            }
            .navigationTitle(.lawsTitle)
            .task { await viewModel.load() }
            .navigationDestination(for: Law.self) { law in
                LawDetailView(law: law)
            }
        }
    }
}

#Preview {
    LawListView()
        .environment(\.locale, Locale(identifier: "fr"))
}

