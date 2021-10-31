//
//  ContentView.swift
//  ColorPicker
//
//  Created by Aiza on 31.10.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var redSlider = Double.random(in: 0...255)
    @State private var greenSlider = Double.random(in: 0...255)
    @State private var blueSlider = Double.random(in: 0...255)
    
    var body: some View {
        VStack{
            ColorPalette(red: redSlider, green: greenSlider, blue: blueSlider)
                .padding(.bottom, 30)
            SliderView(value: $redSlider, color: .red)
            SliderView(value: $greenSlider, color: .green)
            SliderView(value: $blueSlider, color: .blue)
            Spacer()
        }
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Spacer()
                Button("Done") {
                    hideKeyboard()
                }
            }
        }
        .padding()
        .background(.indigo)
        .onTapGesture {
            hideKeyboard()
        }
    }
    
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
