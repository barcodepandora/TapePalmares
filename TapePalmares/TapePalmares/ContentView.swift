//
//  ContentView.swift
//  TapePalmares
//
//  Created by Juan Manuel Moreno on 15/10/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var frames = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K"]
    @State var offset: CGFloat = 0
    
    var body: some View {
        ZStack {
            Color(.cyan)
            HStack {
                Color(.pink)
                ForEach(frames, id: \.self) { t in
                    Text(t)
                        .font(.system(size: 64))
                    Spacer()
                }
            }
            .frame(width: 765, height: 123)
            .offset(x: offset)
            .gesture(
                DragGesture()
                    .onEnded { value in
                        withAnimation {
                            offset = value.translation.width
                        }
                    }
            )
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
