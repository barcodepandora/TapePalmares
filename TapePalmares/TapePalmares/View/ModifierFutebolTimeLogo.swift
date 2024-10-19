//
//  ModifierFutebolTimeLogo.swift
//  TapePalmares
//
//  Created by Juan Manuel Moreno on 19/10/24.
//

import Foundation
import SwiftUI

struct ModifierFutebolTimeLogo: ViewModifier {

    var time: String
    var onTap: () -> Void

    func body(content: Content) -> some View {
        content
            .overlay(
                Image(time)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 64, height: 86)
                    .clipped()
                    .padding()
            )
    }
}
