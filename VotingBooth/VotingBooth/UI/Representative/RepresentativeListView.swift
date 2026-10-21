//
//  RepresentativeListView.swift
//  VotingBooth
//
//  Created by Jérémy Oddos on 20/10/2026.
//
import SwiftUI

struct RepresentativeListView: View {
    @Environment(DependencyContainer.self) private var container
    @State private var viewModel: RepresentativeListViewModel?
    
    var body: some View {
        Text("RepresentativeListView")
    }
}
