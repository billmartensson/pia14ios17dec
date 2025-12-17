//
//  ProductDetailView.swift
//  pia14ios17dec
//
//  Created by BillU on 2025-12-17.
//

import SwiftUI

struct ProductDetailView: View {
    
    @State var showBuy = false
    
    var body: some View {
        VStack {
            Text("PRODUCT DETAIL")
            
            NavigationLink(destination: Text("More info")) {
                Text("Read more")
            }
            
            Button("BUY") {
                showBuy = true
            }
            
        }
        .fullScreenCover(isPresented: $showBuy) {
            // TODO: Fix buy screen
            Text("LETS BUY")
        }
        
    }
}

#Preview {
    ProductDetailView()
}
