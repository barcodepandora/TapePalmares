//
//  FutebolTimes.swift
//  TapePalmares
//
//  Created by Juan Manuel Moreno on 17/10/24.
//

import Foundation

struct Time: Hashable {
    let nombre: String
    let titulos: [Campeao]
    let torneosJugados: [Torneio]
    var eleito = false
    
    func description() -> String {
        let campeoesDescriptions = titulos.map { $0.description() }.joined(separator: ", ")
        return "\(nombre) e titolos: [\(campeoesDescriptions)]"
    }
}

struct Campeao: Hashable {
    let nombre: String
    let año: Int
    
    func description() -> String {
        return "ganhou: \(nombre) no: \(año)"
    }
}

struct Torneio: Hashable {
    let nombre: String
    let año: Int
    var eleito = false
}

