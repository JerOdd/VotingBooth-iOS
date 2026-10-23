//
//  LawRow.swift
//  VotingBooth
//
//  Created by Jérémy Oddos on 22/10/2026.
//

import SwiftUI

struct LawRow: View {
    private let law: Law
    
    init(law: Law) {
        self.law = law
    }
    
    var body: some View {
        Text(law.title)
            .font(.headline)
    }
}
