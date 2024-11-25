//
//  BadgeList.swift
//  MedalCase
//
//  Created by Curtis Jones on 2024-11-21.
//

import SwiftUI

struct BadgeList: View {
    
    let columns: [GridItem] = [
        GridItem(.fixed(120), spacing: 50, alignment: .top),
        GridItem(.fixed(120), spacing: 50, alignment: .top)
    ]
    let badges: [Badge]
    
    var body: some View {
        LazyVGrid(columns: columns,
                alignment: .center,
                spacing: 20
        ) {
            ForEach(badges) { badge in
                BadgeCell(
                    badgeIcon: badge.badgeIcon,
                    badgeTitle: badge.badgeTitle,
                    badgeSubtitle: badge.badgeSubtitle
                )
            }
        }
        //.background(.backgroundWhite)
        .padding()
    }
}

#Preview {
    BadgeList(badges: VRBadges)
}
