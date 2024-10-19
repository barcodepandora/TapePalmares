//
//  FutebolTimes.swift
//  TapePalmares
//
//  Created by Juan Manuel Moreno on 17/10/24.
//

import Foundation

struct Time: Hashable {
    let nombre: String
    let asset: String
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
    var asset: String
    let año: Int
    var eleito = false
    
    init(nombre: String, asset: String, año: Int, eleito: Bool = false) {
        self.nombre = nombre
        self.asset = asset
        self.año = año
        self.eleito = eleito
    }

    init(nombre: String, año: Int, eleito: Bool = false) {
        self.nombre = nombre
        self.asset = ""
        self.año = año
        self.eleito = eleito
    }
}

