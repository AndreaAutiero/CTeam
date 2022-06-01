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
    Circuit(nome: "Varano", storia: "L’autodromo di Varano Melegari nasce verso la fine del 1969 per iniziativa di un gruppo di appassionati locali capitanati da Ennio Dallara, Romano Meggi, Giuseppe Dalla Chiesa, dal sindaco Giorgio Bonzani e dall’ingegner Giampaolo Dallara; il primo tracciato il cui asfalto viene steso dall’impresa del cavalier Ennio Dallara, padre dell’ingegnere, con il coinvolgimento di diversi camionisti della zona, misura solo 550 metri e, a parte una piccola variante sul lato nord, in pratica delimita il campo da calcio del paese.", descrizione: "Il circuito di Varano ha un massimo di 14 curve nella versione da 2.350km.\n            Si raggiunge un massimo di 182 metri in curva 11,mentre la larghezza varia dai 10 ai 12 metri.\n            -Il primo settore presenta 2 punti di frenata T1 e T2 mentre in T3 c’è la parabolica per poi andare in accelerazione fino al primo riscontro cronometrico.\n-Il secondo settore è il più veloce con la prima e la seconda Esse.\n            -Il terzo settore è il più guidato ed è anche in salita fino alla curva 11 per andare poi in discesa fino alla 14." , nomeFileVideo: nil, nomeFileImmagineCircuito: "FotoVarano", nomeFileImmagineTrack: "varanoTrack", tappablePoints: [
            TappablePoint(point: CGPoint(x: 30, y: 10), text: "ui.circuit.track.varano.curva4"),
            TappablePoint(point: CGPoint(x: 30, y: 20), text: "ui.circuit.track.varano.curva5")],
            nomiFileVideo: [""]
           ),
    Circuit(nome: "Monza", storia: "ui.circuit.track.monza.storia".localized, descrizione: "Da scrivere", nomeFileVideo: nil, nomeFileImmagineCircuito: "Monza-1", nomeFileImmagineTrack: "PISTA_",  tappablePoints: [TappablePoint(point: CGPoint(x: 10, y: 10), text: "Tappo")],
            nomiFileVideo: [""])
]
