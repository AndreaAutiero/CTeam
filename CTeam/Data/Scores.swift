//
//  Circuits.swift
//  CTeam
//
//  Created by Andrea Autiero on 11/04/22.
//

import Foundation

struct Score: Hashable {
    var nome: String
    var giri: [Lap]
    var settori: [Sector]
}

struct Lap: Hashable {
    var gap: Float
    var time: Float
}

struct Sector: Hashable {
    var time1: Float
    var time2: Float
    var time3: Float
}

let scores: [Score] = [
    Score(nome: "Monza", giri: [
        Lap(gap: 0, time: 101.007),
        Lap(gap: 0.040, time: 101.047),
        Lap(gap: 0.563, time: 101.610),
        Lap(gap: 0.623, time: 102.233),
        Lap(gap: 0.623, time: 102.856),
        Lap(gap: 0.812, time: 103.668),
        Lap(gap: 0.974, time: 104.974),
        Lap(gap: -1.123, time: 103.851),
        Lap(gap: -1.327, time: 102.178),
        Lap(gap: -1.327, time: 0)
    ], settori: [
        Sector(time1: 0.0, time2: 1.0, time3: 2.0),
        Sector(time1: 10.0, time2: 20.0, time3: 30.0),
        Sector(time1: 100.0, time2: 200.0, time3: 300.0),
        Sector(time1: 30.0, time2: 60.0, time3: 90.0),
        Sector(time1: 35.0, time2: 70.0, time3: 105.0),
        Sector(time1: 1.1, time2: 2.2, time3: 3.3)
    ]),
    Score(nome: "Varano", giri: [
        Lap(gap: 0, time: 101.007),
        Lap(gap: 0.040, time: 101.047),
        Lap(gap: 0.563, time: 101.610),
        Lap(gap: 0.623, time: 102.233),
        Lap(gap: 0.623, time: 102.856),
        Lap(gap: 0.812, time: 103.668),
        Lap(gap: 0.974, time: 104.974),
        Lap(gap: -1.123, time: 103.851),
        Lap(gap: -1.327, time: 102.178),
        Lap(gap: -1.327, time: 0)
    ], settori: [
        Sector(time1: 0.0, time2: 1.0, time3: 2.0),
        Sector(time1: 10.0, time2: 20.0, time3: 30.0),
        Sector(time1: 100.0, time2: 200.0, time3: 300.0),
        Sector(time1: 30.0, time2: 60.0, time3: 90.0),
        Sector(time1: 35.0, time2: 70.0, time3: 105.0),
        Sector(time1: 1.1, time2: 2.2, time3: 3.3)
    ])
]
