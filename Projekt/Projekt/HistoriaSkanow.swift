//
//  HistoriaSkanow.swift
//  Projekt
//
//  Created by barte on 24.11.2026.
//

import SwiftUI

struct HistoriaSkanow: View {
    @State private var produkty = [
        Produkt(nazwa: "Tymbark", kalorycznosc: "300"),
        Produkt(nazwa: "Ryz", kalorycznosc: "200")
    ]
    var body: some View {
        VStack {
            List(produkty){ produkty in
            Text("\(produkty.nazwa), \(produkty.kalorycznosc)")

            }

        }

        .padding()
    }
}


