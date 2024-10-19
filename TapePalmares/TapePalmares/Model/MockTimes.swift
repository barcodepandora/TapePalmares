//
//  MockTimes.swift
//  TapePalmares
//
//  Created by Juan Manuel Moreno on 18/10/24.
//

import Foundation

let flamengo = Time(
    nombre: "Flamengo",
    asset: "flamengo",
    titulos: [
        Campeao(nombre: "Campeonato Carioca", año: 1972),
        Campeao(nombre: "Campeonato Carioca", año: 1974),
        Campeao(nombre: "Campeonato Brasileiro Série A", año: 1971),
        Campeao(nombre: "Taça Guanabara", año: 1970),
        Campeao(nombre: "Taça Guanabara", año: 1972),
        Campeao(nombre: "Taça Guanabara", año: 1973),
    ],
    torneosJugados: [
        Torneio(nombre: "Campeonato Carioca", año: 1970),
        Torneio(nombre: "Campeonato Carioca", año: 1971),
        Torneio(nombre: "Campeonato Carioca", año: 1972),
        Torneio(nombre: "Campeonato Carioca", año: 1973),
        Torneio(nombre: "Campeonato Carioca", año: 1974),
        Torneio(nombre: "Campeonato Brasileiro Série A", año: 1971),
        Torneio(nombre: "Campeonato Brasileiro Série A", año: 1972),
        Torneio(nombre: "Campeonato Brasileiro Série A", año: 1973),
        Torneio(nombre: "Campeonato Brasileiro Série A", año: 1974),
    ]
)

let fluminense = Time(
    nombre: "Fluminense",
    asset: "fluminense",
    titulos: [
        Campeao(nombre: "Campeonato Carioca", año: 1971),
        Campeao(nombre: "Campeonato Carioca", año: 1973),
        Campeao(nombre: "Campeonato Carioca", año: 1975),
        Campeao(nombre: "Campeonato Carioca", año: 1976)
    ],
    torneosJugados: [
        Torneio(nombre: "Campeonato Carioca", año: 1970),
        Torneio(nombre: "Campeonato Carioca", año: 1971),
        Torneio(nombre: "Campeonato Carioca", año: 1972),
        Torneio(nombre: "Campeonato Carioca", año: 1973),
        Torneio(nombre: "Campeonato Brasileiro Série A", año: 1970),
    ]
)

let vascoDaGama = Time(
    nombre: "Vasco da Gama",
    asset: "vascodagama",
    titulos: [
        Campeao(nombre: "Campeonato Carioca", año: 1970),
        Campeao(nombre: "Campeonato Brasileiro Série A", año: 1974)
    ],
    torneosJugados: [
        Torneio(nombre: "Campeonato Carioca", año: 1970),
        Torneio(nombre: "Campeonato Carioca", año: 1971),
        Torneio(nombre: "Campeonato Carioca", año: 1972),
        Torneio(nombre: "Campeonato Carioca", año: 1973),
        Torneio(nombre: "Campeonato Brasileiro Série A", año: 1974),
    ]
)

let botafogo = Time(
    nombre: "Botafogo",
    asset: "botafogo",
    titulos: [
        Campeao(nombre: "Campeonato Carioca", año: 1968),
        Campeao(nombre: "Taça Brasil", año: 1968),
        Campeao(nombre: "Campeonato Brasileiro Série A", año: 1995)
    ],
    torneosJugados: [
        Torneio(nombre: "Campeonato Carioca", año: 1968),
        Torneio(nombre: "Taça Brasil", año: 1968),
        Torneio(nombre: "Campeonato Carioca", año: 1969),
        Torneio(nombre: "Campeonato Carioca", año: 1970),
        // ... agregar más torneos jugados por Botafogo
        Torneio(nombre: "Campeonato Brasileiro Série A", año: 1995),
    ]
)

let america = Time(
    nombre: "America",
    asset: "america",
    titulos: [
        Campeao(nombre: "Campeonato Carioca", año: 1960),
        Campeao(nombre: "Torneio dos Campeões", año: 1982)
    ],
    torneosJugados: [
        Torneio(nombre: "Campeonato Carioca", año: 1960),
        Torneio(nombre: "Torneio dos Campeões", año: 1982),
    ]
)

let bangu = Time(
    nombre: "Bangu",
    asset: "bangu",
    titulos: [
        Campeao(nombre: "Campeonato Carioca", año: 1966)
    ],
    torneosJugados: [
        Torneio(nombre: "Campeonato Carioca", año: 1966),
    ]
)

let saoCristovao = Time(
    nombre: "São Cristóvão",
    asset: "saocristovao",
    titulos: [
        Campeao(nombre: "Campeonato Carioca", año: 1926)
    ],
    torneosJugados: [
        Torneio(nombre: "Campeonato Carioca", año: 1926),
    ]
)
