//
//  ContentView.swift
//  Projekt
//
//  Created by barte on 24.11.2026.
//

import SwiftUI

struct ContentView: View {
    @State private var pokazWidok: Bool = false
    var body: some View {
        NavigationStack{
        VStack {
            Image("cos")
            .resizable()
            .scaledToFit()
            Text("FitApp")
              .font(.largeTitle)
              .bold()
              .padding(40)
            NavigationLink("Historia")
            {
                 HistoriaSkanow()
            }
            .padding(10)
            .background(.red)
            .foregroundColor(.black)
            .cornerRadius(15)

                NavigationLink("Skanuj")
            {
                 Kamera()
            }
            .padding(10)
            .background(.red)
            .foregroundColor(.black)
            .cornerRadius(15)

            Button("Wpisz ręcznie"){
                pokazWidok = true
            }
            .padding(10)
            .background(.red)
            .foregroundColor(.black)
            .cornerRadius(15)
            .sheet(isPresented: $pokazWidok)
            {
                DrugiView()
            }

        }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
