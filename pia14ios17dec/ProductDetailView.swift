//
//  ProductDetailView.swift
//  pia14ios17dec
//
//  Created by BillU on 2025-12-17.
//

import SwiftUI

struct ProductDetailView: View {
    
    @State var showBuy = false

    @State var showSpec = false

    var body: some View {
        VStack {
            Text("PRODUCT DETAIL")
            
            NavigationLink(destination: Text("More info")) {
                Text("Read more")
            }
            
            Button("BUY") {
                showBuy = true
            }
            
            Button("Specifications") {
                showSpec = true
            }
            
        }
        .fullScreenCover(isPresented: $showBuy) {
            // TODO: Fix buy screen
            BuyView(letshow: $showBuy)
        }
        .sheet(isPresented: $showSpec) {
            VStack {
                Text("This is spec")
            }
            .frame(height: 200)
            .background(.red)
        }
        
    }
}

#Preview {
    ProductDetailView()
}
