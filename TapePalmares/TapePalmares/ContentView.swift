//
//  ContentView.swift
//  TapePalmares
//
//  Created by Juan Manuel Moreno on 15/10/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var frames = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K"]
    @State var offsetTimes: CGFloat = 0
    @State var offsetTorneios: CGFloat = 0
    @State var offsetAnnos: CGFloat = 0
    
    let flamengo = Time(
        nombre: "Flamengo",
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
    
    @State private var times: [Time]
    var torneios: [Torneio]
    var annos = [1970, 1971, 1972, 1973, 1974, 1975, 1976, 1977, 1978, 1979, 1980]
    
    init() {
        times = [flamengo, fluminense]
        torneios = [            
            Torneio(nombre: "Campeonato Carioca", año: 1970),
            Torneio(nombre: "Campeonato Brasileiro Série A", año: 1971),
            Torneio(nombre: "Taça Guanabara", año: 1972),
        ]
    }
    
    func queCampeoes(anno: Int) {
        var timesDoAnno = times.filter { time in
            time.titulos.contains { campeao in
                campeao.año == anno
            }
        }
        for time in timesDoAnno {
            print(time.description())
        }
//        print("\(timesDoAnno)")
    }

    var body: some View {
        ZStack {
            Color(.cyan)
            
            VStack {
                
                // time
                HStack {
                    Color(.pink)
                    ForEach($times, id: \.self) { $t in
                        Text(t.nombre)
                            .font(.system(size: 64))
                            .onTapGesture {
                                print("Eleito \(t.nombre)")
                                t.eleito.toggle()
                            }
                        Spacer()
                    }
                }
                .frame(width: 1024, height: 123)
                .offset(x: offsetTimes)
                
                .gesture(
                    DragGesture()
                        .onEnded { value in
                            withAnimation {
                                offsetTimes = value.translation.width
                            }
                        }
                )
                
                // torneio
                HStack {
                    Color(.pink)
                    ForEach(torneios, id: \.self) { t in
                        Text(t.nombre)
                            .font(.system(size: 64))
                        Spacer()
                    }
                }
                .frame(width: 1024, height: 123)
                .offset(x: offsetTorneios)
                .gesture(
                    DragGesture()
                        .onEnded { value in
                            withAnimation {
                                offsetTorneios = value.translation.width
                            }
                        }
                )
                
                // anno
                HStack {
                    Color(.pink)
                    ForEach(annos, id: \.self) { t in
                        Text(String(t))
                            .font(.system(size: 64))
                            .onTapGesture {
                                self.queCampeoes(anno: t)
                            }
                        Spacer()
                    }
                }
                .frame(width: 1823, height: 123)
                .offset(x: offsetAnnos)
                .gesture(
                    DragGesture()
                        .onEnded { value in
                            withAnimation {
                                offsetAnnos = value.translation.width
                            }
                        }
                )
            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
