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
            TappablePoint(point: CGPoint(x: 224, y: 82), text: "varano.curva4"),
            TappablePoint(point: CGPoint(x: 170, y: 112), text: "varano.curva2"),
            TappablePoint(point: CGPoint(x: 186, y: 132), text: "varano.curva1"),
            TappablePoint(point: CGPoint(x: 308, y: 40), text: "varano.curva3"),
            TappablePoint(point: CGPoint(x: 46, y: 166), text: "varano.curva6"),
            TappablePoint(point: CGPoint(x: 76, y: 142), text: "varano.curva5"),
            TappablePoint(point: CGPoint(x: 78, y: 182), text: "varano.curva7")],
        nomiFileVideo: [""]
    ),
    Circuit(
        nome: "Monza",
        storia: "monza.storia".localized,
        descrizione: "Da scrivere",
        nomeFileVideo: nil,
        nomeFileImmagineCircuito: "Monza-1",
        nomeFileImmagineTrack: "PISTA_",
        tappablePoints: [
            TappablePoint(point: CGPoint(x: 10, y: 10), text: "Tappo")],
        nomiFileVideo: [""]
    ),
    Circuit(
        nome: "Imola",
        storia: "imola.storia".localized,
        descrizione: "imola.descrizione".localized,
        nomeFileVideo: nil,
        nomeFileImmagineCircuito: "imola(1)",
        nomeFileImmagineTrack: "1200px-Imola_2009.svg",
        tappablePoints: [
            TappablePoint(point: CGPoint(x: 30, y: 10), text: "ui.circuit.track.varano.curva4"),
            TappablePoint(point: CGPoint(x: 30, y: 20), text: "ui.circuit.track.varano.curva5")],
        nomiFileVideo: [""]
    ),
    Circuit(
        nome: "Vallelunga",
        storia: "vallelunga.storia".localized,
        descrizione: "vallelunga.descrizione".localized,
        nomeFileVideo: nil,
        nomeFileImmagineCircuito: "vallelunga(2)",
        nomeFileImmagineTrack: "Vallelunga-nomi-curve",
        tappablePoints: [
            TappablePoint(point: CGPoint(x: 30, y: 10), text: "ui.circuit.track.varano.curva4"),
            TappablePoint(point: CGPoint(x: 30, y: 20), text: "ui.circuit.track.varano.curva5")],
        nomiFileVideo: [""]
    )
]
