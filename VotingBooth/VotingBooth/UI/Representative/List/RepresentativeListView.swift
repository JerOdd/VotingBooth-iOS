//
//  RepresentativeListView.swift
//  VotingBooth
//
//  Created by Jérémy Oddos on 20/10/2026.
//
import SwiftUI

struct RepresentativeListView: View {
    @State private var viewModel = RepresentativeListViewModel()
    
    var body: some View {
        NavigationStack {
            List(viewModel.representatives) {
                RepresentativeRow(representative: $0)
            }
            .navigationTitle("Representatives")
            .task { await viewModel.load() }
        }
    }
}
