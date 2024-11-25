//
//  Data.swift
//  MedalCase
//
//  Created by Curtis Jones on 2024-11-21.
//

import Foundation

struct Badge: Identifiable {
    var id: UUID = UUID()
    var badgeIcon: String
    var badgeTitle: String
    var badgeSubtitle: String?
}

let PRBadges: [Badge] = [
    Badge(badgeIcon: "fastest_5k", badgeTitle: "Fastest 5K", badgeSubtitle: "25:00"),
    Badge(badgeIcon: "fastest_10k", badgeTitle: "Fastest 10K", badgeSubtitle: "50:00"),
    Badge(badgeIcon: "fastest_half_marathon", badgeTitle: "Half Marathon", badgeSubtitle: nil),
    Badge(badgeIcon: "fastest_marathon", badgeTitle: "Marathon", badgeSubtitle: nil),
    Badge(badgeIcon: "highest_elevation", badgeTitle: "Highest Elevation", badgeSubtitle: "200 ft"),
    Badge(badgeIcon: "longest_run", badgeTitle: "Longest Run", badgeSubtitle: "25 km")
]

let VRBadges: [Badge] = [
    Badge(badgeIcon: "hakone_ekiden", badgeTitle: "Hakone Ekiden", badgeSubtitle: "25:00"),
    Badge(badgeIcon: "mizuno_singapore_ekiden", badgeTitle: "Misuno Signapore Ekiden 2015", badgeSubtitle: "30:00"),
    Badge(badgeIcon: "tokyo-hakone-ekiden-2020", badgeTitle: "Tokyo-Hakone Ekiden 2020", badgeSubtitle: "35:00"),
    Badge(badgeIcon: "virtual_5k_race", badgeTitle: "Virtual 5K Race", badgeSubtitle: "24:24"),
    Badge(badgeIcon: "virtual_10k_race", badgeTitle: "Virtual 10K Race", badgeSubtitle: "1:09:54"),
    Badge(badgeIcon: "virtual_half_marathon_race", badgeTitle: "Virtual Half Marathon Race", badgeSubtitle: "2:30:00"),
    Badge(badgeIcon: "virtual_marathon_race", badgeTitle: "Virtual Marathon Race", badgeSubtitle: "4:30:00")
]

//let VRBadges: [Badge] = []
