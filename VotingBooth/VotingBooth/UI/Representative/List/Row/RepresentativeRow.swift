//
//  RepresentativeRow.swift
//  VotingBooth
//
//  Created by Jérémy Oddos on 22/10/2026.
//

import SwiftUI

struct RepresentativeRow: View {
    private let representative: Representative
    
    init(representative: Representative) {
        self.representative = representative
    }
    
    var body: some View {
        HStack(alignment: .top) {
            AsyncImage(url: representative.photoUrl) {
                switch $0 {
                    case .success(let image):
                        image.resizable().scaledToFill()
                    default:
                        Image(systemName: "person.crop.circle.fill")
                            .resizable()
                            .foregroundStyle(.secondary)
                }
            }
            .frame(width: 50, height: 50)
            .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text(representative.fullName)
                    .font(.headline)
                
                Text(representative.groupShortName)
                    .foregroundStyle(Color(hex: representative.groupColor).contrastingTextColor)
                    .font(.caption.weight(.semibold))
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(
                        Color(hex: representative.groupColor),
                        in: Capsule()
                    )
            }
            
        }
    }
}
