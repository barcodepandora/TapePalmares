//
//  ContentView.swift
//  TapePalmares
//
//  Created by Juan Manuel Moreno on 15/10/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var offsetTimes: CGFloat = 0
    @State var offsetTorneios: CGFloat = 0
    @State var offsetAnnos: CGFloat = 0
    @State private var times: [Time]
    @State private var torneios: [Torneio]
    var annos = [1960, 1962, 1968, 1970, 1971, 1972, 1973, 1974, 1975, 1976, 1977, 1978, 1979, 1980, 1982]
    
    init() {
        times = [flamengo, fluminense, vascoDaGama, botafogo, america, bangu, saoCristovao]
        torneios = [
            Torneio(nombre: "Campeonato Carioca", año: 1970),
            Torneio(nombre: "Campeonato Brasileiro Série A", año: 1971),
            Torneio(nombre: "Taça Guanabara", año: 1972),
        ]
    }
    
    func queCampeoes(anno: Int) {
        var timesDoAnno = times.filter { time in
            time.titulos.contains { campeao in
                campeao.año == anno && 
                time.eleito &&
                torneios.filter { $0.eleito }.map { $0.nombre }.contains(campeao.nombre)
            }
        }
        for time in timesDoAnno {
            print(time.description())
        }
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
                .frame(width: 2057, height: 123)
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
                    ForEach($torneios, id: \.self) { $t in
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
                .frame(width: 2023, height: 123)
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
