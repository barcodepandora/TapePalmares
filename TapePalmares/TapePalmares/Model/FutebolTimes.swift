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
        return "ganhou: \(nombre), no: \(año)"
    }
}

struct Torneio: Hashable {
    let nombre: String
    let año: Int
    var eleito = false
}

//let flamengo = Time(
//    nombre: "Flamengo",
//    titulos: [
//        Campeao(nombre: "Campeonato Carioca", año: 1972),
//        Campeao(nombre: "Campeonato Carioca", año: 1974),
//        Campeao(nombre: "Campeonato Brasileiro Série A", año: 1971),
//        Campeao(nombre: "Taça Guanabara", año: 1970),
//        Campeao(nombre: "Taça Guanabara", año: 1972),
//        Campeao(nombre: "Taça Guanabara", año: 1973),
//    ],
//    torneosJugados: [
//        Torneio(nombre: "Campeonato Carioca", año: 1970),
//        Torneio(nombre: "Campeonato Carioca", año: 1971),
//        Torneio(nombre: "Campeonato Carioca", año: 1972),
//        Torneio(nombre: "Campeonato Carioca", año: 1973),
//        Torneio(nombre: "Campeonato Carioca", año: 1974),
//        Torneio(nombre: "Campeonato Brasileiro Série A", año: 1971),
//        Torneio(nombre: "Campeonato Brasileiro Série A", año: 1972),
//        Torneio(nombre: "Campeonato Brasileiro Série A", año: 1973),
//        Torneio(nombre: "Campeonato Brasileiro Série A", año: 1974),
//    ]
//)
//
//let fluminense = Time(
//    nombre: "Fluminense",
//    titulos: [
//        Campeao(nombre: "Campeonato Carioca", año: 1971),
//        Campeao(nombre: "Campeonato Carioca", año: 1973),
//        Campeao(nombre: "Campeonato Carioca", año: 1975),
//        Campeao(nombre: "Campeonato Carioca", año: 1976)
//    ],
//    torneosJugados: [
//        Torneio(nombre: "Campeonato Carioca", año: 1970),
//        Torneio(nombre: "Campeonato Carioca", año: 1971),
//        Torneio(nombre: "Campeonato Carioca", año: 1972),
//        Torneio(nombre: "Campeonato Carioca", año: 1973),
//        Torneio(nombre: "Campeonato Brasileiro Série A", año: 1970),
//    ]
//)

//let vascoDaGama = Time(
//    nombre: "Vasco da Gama",
//    titulos: [
//        Campeao(nombre: "Campeonato Carioca", año: 1970),
//        Campeao(nombre: "Campeonato Brasileiro Série A", año: 1974)
//    ],
//    torneosJugados: [
//        Torneio(nombre: "Campeonato Carioca", año: 1970),
//        Torneio(nombre: "Campeonato Carioca", año: 1971),
//        Torneio(nombre: "Campeonato Carioca", año: 1972),
//        Torneio(nombre: "Campeonato Carioca", año: 1973),
//        Torneio(nombre: "Campeonato Brasileiro Série A", año: 1974),
//        // ... más torneos
//    ]
//)
