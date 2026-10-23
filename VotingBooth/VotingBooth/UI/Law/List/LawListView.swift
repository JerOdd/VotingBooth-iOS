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
            List(viewModel.laws) {
                LawRow(law: $0)
            }
            .navigationTitle(.lawsTitle)
            .task { await viewModel.load() }
        }
    }
}

#Preview {
    LawListView()
        .environment(\.locale, Locale(identifier: "fr"))
}

