//
//  ContentView.swift
//  MedalCase
//
//  Created by Curtis Jones on 2024-11-20.
//

import SwiftUI

struct ContentView: View {
    
    var prCount: Int = PRBadges.filter({$0.badgeSubtitle != nil}).count
    var prTotalCount: Int = PRBadges.count
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 0) {
                    SectionHeader(
                        sectionTitle: StringConstants.personalRecordsHeader,
                        sectionSubtitle: "\(prCount) of \(prTotalCount)")
                    BadgeList(badges: PRBadges)
                    if (!VRBadges.isEmpty) {
                        SectionHeader(
                            sectionTitle: StringConstants.virtualRacesHeader,
                            sectionSubtitle: nil)
                        BadgeList(badges: VRBadges)
                    }
                }
            }
            .navigationTitle(
                Text(StringConstants.achievementsHeader)
                    .font(.system(size: FontConstants.navBarHeader))
            )
            .toolbarBackground(.primaryBlue, for: .navigationBar)
            .toolbarBackgroundVisibility(.visible, for: .navigationBar)
            .toolbarColorScheme(.dark, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading: Image(systemName: "chevron.backward"),
                trailing: Image(systemName: "ellipsis")
            ).foregroundStyle(.backgroundWhite)
        }
    }
}

#Preview {
    ContentView()
}
