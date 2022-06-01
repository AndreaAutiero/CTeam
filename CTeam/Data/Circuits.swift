//
//  Circuits.swift
//  CTeam
//
//  Created by Andrea Autiero on 11/04/22.
//

import Foundation
import SwiftUI

struct Circuit: Hashable {
    var nome: String
    var storia: String
    var descrizione: String
    var nomeFileVideo: String?
    var nomeFileImmagineCircuito: String
    var nomeFileImmagineTrack: String
    var tappablePoints: [TappablePoint]
    var nomiFileVideo: [String]
}

var circuits: [Circuit] = [
    Circuit(
        nome: "Varano",
        storia: "varano.storia".localized,
        descrizione: "varano.descrizione".localized,
        nomeFileVideo: nil,
        nomeFileImmagineCircuito: "FotoVarano",
        nomeFileImmagineTrack: "varanoTrack",
        tappablePoints: [
            TappablePoint(point: CGPoint(x: 30, y: 10), text: "ui.circuit.track.varano.curva4"),
            TappablePoint(point: CGPoint(x: 30, y: 20), text: "ui.circuit.track.varano.curva5")],
        nomiFileVideo: [""]
    ),
    Circuit(
        nome: "Monza",
        storia: "ui.circuit.track.monza.storia".localized,
        descrizione: "Da scrivere",
        nomeFileVideo: nil,
        nomeFileImmagineCircuito: "Monza-1",
        nomeFileImmagineTrack: "PISTA_",
        tappablePoints: [
            TappablePoint(point: CGPoint(x: 10, y: 10), text: "Tappo")],
        nomiFileVideo: [""]
    )
]
