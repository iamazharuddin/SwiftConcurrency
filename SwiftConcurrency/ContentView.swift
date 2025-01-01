//
//  ContentView.swift
//  SwiftConcurrency
//
//  Created by Azharuddin 1 on 01/01/25.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    TaskScreen()
                } label: {
                    Text("Open Task Screen.")
                        .font(.title3)
                        .padding()
                        .background(.blue)
                        .foregroundStyle(.white)
                        .cornerRadius(10.0)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
