//
//  ColorPalette.swift
//  ColorPicker
//
//  Created by Aiza on 31.10.2021.
//

import SwiftUI

struct ColorPalette: View {
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Rectangle()
            .frame(height: 180)
            .cornerRadius(25)
            .foregroundColor(Color(red: red / 255,
                                   green: green / 255,
                                   blue: blue / 255))
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.white, lineWidth: 4)
            )
    }
}

struct ColorPalette_Previews: PreviewProvider {
    static var previews: some View {
        ColorPalette(red: 200, green: 122, blue: 122)
    }
}
