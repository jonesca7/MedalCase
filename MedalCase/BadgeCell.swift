//
//  BadgeCell.swift
//  MedalCase
//
//  Created by Curtis Jones on 2024-11-21.
//

import SwiftUI

struct BadgeCell: View {
    
    let badgeIcon: String
    let badgeTitle: String
    var badgeSubtitle: String? = nil
    
    var body: some View {
        VStack(alignment: .center) {
            Image(badgeIcon)
            Text(badgeTitle)
                .bold()
                .multilineTextAlignment(.center)
            if let result = badgeSubtitle {
                Text(result)
            } else {
                Text("Not yet")
            }
        }
        .foregroundStyle(.textBlack)
        .font(.system(size: FontConstants.label))
        .opacity(badgeSubtitle == nil ? 0.4 : 1)
    }
}

#Preview {
    BadgeCell(badgeIcon: "fastest_5k", badgeTitle: "Fastest Half Marathon", badgeSubtitle: nil)
}
