//
//  SliderView.swift
//  ColorPicker
//
//  Created by Aiza on 31.10.2021.
//

import SwiftUI

struct SliderView: View {
    @Binding var value: Double
    let color: Color
    
    var body: some View {
        let someNumberProxy = Binding<String>(
            get: { String(format: "%.f", Double(self.value)) },
            set: {
                if let value = NumberFormatter().number(from: $0) {
                    if (value.doubleValue <= 255.00 && value.doubleValue >= 0) {
                        self.value = value.doubleValue
                    } else {
                        self.value = 0.00
                    }
                }
            }
        )
        
        HStack{
            Text("\(lround(value))")
            Slider(value: $value,
                   in: 0...255,
                   step: 1).accentColor(color)
            SliderTextFieldView(someNumberProxy: someNumberProxy)
        }
    }
}
