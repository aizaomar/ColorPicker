//
//  SliderTextFieldView.swift
//  ColorPicker
//
//  Created by Aiza on 31.10.2021.
//

import SwiftUI

struct SliderTextFieldView: View {
    @Binding var someNumberProxy: String
    
    var body: some View {
        TextField("255", text: $someNumberProxy)
            .keyboardType(.numberPad)
            .frame(width: 35)
            .background(.white)
            .cornerRadius(5)
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.black, lineWidth: 1)
            )
    }
}
