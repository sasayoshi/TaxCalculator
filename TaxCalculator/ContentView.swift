//
//  ContentView.swift
//  TaxCalculator
//
//  Created by sasayoshi on 2024/01/21.
//

import SwiftUI

struct ContentView: View {
    @State var inputText = ""
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("ここに文字を入力", text: $inputText).keyboardType(.numberPad)
            Text("価格: \(inputText)")
            Text("消費税8%: \((Double(inputText) ?? 0) * 0.08)")
            Text("消費税10%: \((Double(inputText) ?? 0) * 0.1)")
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
