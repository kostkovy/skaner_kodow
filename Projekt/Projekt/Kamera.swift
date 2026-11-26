//
//  Kamera.swift
//  Projekt
//
//  Created by barte on 26.11.2026.
//

import SwiftUI

extension NSNotification.Name{
    public static let deviceDidShakeNotification = NSNotification.Name("DeviceShakeNotification")
}

extension UIWindow {
    open override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        super.motionEnded(motion, with: event)
        NotificationCenter.default.post(name: .deviceDidShakeNotification, object: event)
    }
}

struct Kamera: View {
    @Environment(\.dismiss) private var zamknij
    @State private var produkty = [
        Produkt(nazwa: "Tymbark", kalorycznosc: "300"),
        Produkt(nazwa: "Ryz", kalorycznosc: "200")
    ]
    var body: some View {
        VStack {


        }

        .padding()
          .onReceive(NotificationCenter.default.publisher(for: .deviceDidShakeNotification))
            { _ in
                zamknij()

            }
    }
}

