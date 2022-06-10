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
            TappablePoint(point: CGPoint(x: 160, y: 100), text: "varano.curva4"),
            TappablePoint(point: CGPoint(x: 200, y: 86), text: "varano.curva2"),
            TappablePoint(point: CGPoint(x: 160, y: 122), text: "varano.curva1"),
            TappablePoint(point: CGPoint(x: 300, y: 25), text: "varano.curva3"),
            TappablePoint(point: CGPoint(x: 50, y: 175), text: "varano.curva6"),
            TappablePoint(point: CGPoint(x: 50, y: 130), text: "varano.curva5"),
            TappablePoint(point: CGPoint(x: 65, y: 160), text: "varano.curva7")],
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
            TappablePoint(point: CGPoint(x: 230, y: 190), text: "monza.curva1"),
        TappablePoint(point: CGPoint(x: 150, y: 190), text: "monza.curva2"),
        TappablePoint(point: CGPoint(x: 28, y: 85), text: "monza.curva3"),
        TappablePoint(point: CGPoint(x: 40, y: 17), text: "monza.curva4"),
        TappablePoint(point: CGPoint(x: 135, y: 110), text: "monza.curva5")],
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
            TappablePoint(point: CGPoint(x: 190, y: 180), text: "imola.curva1"),
            TappablePoint(point: CGPoint(x: 290, y: 150), text: "imola.curva2"),
            TappablePoint(point: CGPoint(x: 160, y: 98), text: "imola.curva3")],
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
            TappablePoint(point: CGPoint(x: 30, y: 40), text: "vallelunga.curva1"),
            TappablePoint(point: CGPoint(x: 315, y: 66), text: "vallelunga.curva2"),
            TappablePoint(point: CGPoint(x: 145, y: 147), text: "vallelunga.curva3"),
            TappablePoint(point: CGPoint(x: 120, y: 57), text: "vallelunga.curva4"),
            TappablePoint(point: CGPoint(x: 195, y: 75), text: "vallelunga.curva5"),
            TappablePoint(point: CGPoint(x: 150, y: 60), text: "vallelunga.curva6"),
            TappablePoint(point: CGPoint(x: 140, y: 47), text: "vallelunga.curva7"),
            TappablePoint(point: CGPoint(x: 30, y: 75), text: "vallelunga.curva8")],
        nomiFileVideo: [""]
    )
]
