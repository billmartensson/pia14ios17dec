//
//  ContentView.swift
//  pia14ios17dec
//
//  Created by BillU on 2025-12-17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Products", systemImage: "tray.and.arrow.down.fill") {
                ProductlistView()
            }
            .badge(2)


            Tab("Sent", systemImage: "tray.and.arrow.up.fill") {
                Text("Tab2")
            }
            


            Tab("Account", systemImage: "person.crop.circle.fill") {
                Text("Tab3")
            }
            .badge("!")

            Tab("T4", systemImage: "person.crop.circle.fill") {
                Text("Tab4")
            }
            .badge("!")

            Tab("T5", systemImage: "person.crop.circle.fill") {
                Text("Tab5")
            }
            .badge("!")


        }
    }
}

#Preview {
    ContentView()
}
