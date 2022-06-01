//
//  Cars.swift
//  CTeam
//
//  Created by Andrea Autiero on 12/05/22.
//

import Foundation

struct Car: Hashable {
    var name: String
    var volume: Float
    var weight: Float
    var maxSpeed: Float
    var horsepower: Float
}

let cars: [Car] = [
    Car(name: "UniNa Makkinon", volume: 111.22, weight: 678.90, maxSpeed: 246.80, horsepower: 111.11),
    Car(name: "UniNa Kaffetier", volume: 999.98, weight: 123.45, maxSpeed: 135.79, horsepower: 246.80),
    Car(name: "Ford Fiesta ST", volume: 1250, weight: 1280, maxSpeed: 178, horsepower: 82.0),
]
