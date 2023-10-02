//
//  ContentView.swift
//  ScrollViewTest
//
//  Created by Nikita Timonin on 02.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ScrollView()
                .tabItem {
                    Label("First", systemImage: "star")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ScrollView: View {
    var body: some View {
        List {
            ForEach((1...100), id: \.self) {
                Text("Row \($0)")
            }
        }
        .safeAreaInset(edge: .bottom, spacing: 0) {
            Spacer()
                .frame(height: 50)
        }
        .overlay(alignment: .bottom) {
            Color(.red)
                .frame(height: 50.0)
                .opacity(0.4)
        }
        .listStyle(.plain)
       
    }
}
