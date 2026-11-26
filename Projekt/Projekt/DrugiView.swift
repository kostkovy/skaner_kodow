//
//  ContentView.swift
//  Projekt
//
//  Created by barte on 24.11.2026.
//

import SwiftUI

struct DrugiView: View {
    @State private var kod:String = ""
    @Environment(\.dismiss) private var zamknij

    var body: some View {
        VStack {
            Text("Wpisz kod: ")
            .bold()
            .padding(10)
            .font(.largeTitle)
            TextField("Wpisz kod", text: $kod)
              .font(.largeTitle)
              .background(.white)
              .cornerRadius(10)
              .border(Color.red,width: 3)

            HStack{
              Button("Powrót")
              {
                zamknij()
              }
              .padding(10)
              .background(.red)
              .foregroundColor(.white)
              .cornerRadius(10)
              .padding(10)
              Button("Zapisz")
              {

              }
              .padding(10)
              .background(.red)
              .foregroundColor(.white)
              .cornerRadius(10)
              .padding(10)
            }

        }

        .padding()
    }
}

#Preview {
    DrugiView()
}