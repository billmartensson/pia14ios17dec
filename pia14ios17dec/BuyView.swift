//
//  BuyView.swift
//  pia14ios17dec
//
//  Created by BillU on 2025-12-17.
//

import SwiftUI

struct BuyView: View {
    
    @Binding var letshow : Bool
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            
            Button("Close") {
                letshow = false
            }

            Button("Also Close") {
                dismiss()
            }

            
            Text("BUY BUY BUY")
            
            
        }
    }
}

#Preview {
    BuyView(letshow: .constant(true))
}
