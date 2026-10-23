//
//  LawDetailView.swift
//  VotingBooth
//
//  Created by Jérémy Oddos on 23/10/2026.
//

import SwiftUI

struct LawDetailView: View {
    @State var viewModel: LawDetailViewModel
    
    init(law: Law) {
        _viewModel = State(initialValue: LawDetailViewModel(law: law))
    }
    
    var body: some View {
        
    }
}
