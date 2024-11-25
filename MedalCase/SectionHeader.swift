//
//  SectionHeader.swift
//  MedalCase
//
//  Created by Curtis Jones on 2024-11-21.
//

import SwiftUI

struct SectionHeader: View {
    
    let sectionTitle: String
    let sectionSubtitle: String?
    
    var body: some View {
        HStack {
            Text(sectionTitle)
                .bold()
                .font(.system(size: FontConstants.sectionHeader))
                .padding()
                .foregroundStyle(.headerTitle)
            Spacer()
            if let sectionSubtitle {
                Text(sectionSubtitle)
                    .font(.system(size: FontConstants.sectionHeader))
                    .padding()
                    .foregroundStyle(.headerSubtitle)
            }
        }
        .background(.sectionHeader)
    }
}

#Preview {
    SectionHeader(sectionTitle: "Personal Records", sectionSubtitle: "0 of 6")
}
