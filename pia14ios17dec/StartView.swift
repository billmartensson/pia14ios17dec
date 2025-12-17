//
//  StartView.swift
//  pia14ios17dec
//
//  Created by BillU on 2025-12-17.
//

import SwiftUI

struct StartView: View {
    
    @State var isLoggedin = true
    
    var body: some View {
        
        if isLoggedin == true {
            ContentView()
        }
        if isLoggedin == false {
            VStack {
                Text("LOGIN")
                Button("LOGIN") {
                    isLoggedin = true
                }
            }
        }
    }
}

#Preview {
    StartView()
}
