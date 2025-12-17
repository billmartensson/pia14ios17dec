//
//  ProductlistView.swift
//  pia14ios17dec
//
//  Created by BillU on 2025-12-17.
//

import SwiftUI

struct ProductlistView: View {
    var body: some View {
        
        NavigationStack {
            VStack {
                NavigationLink(destination: ProductDetailView()) {
                    Text("Go to Product View")
                }
                
                List {
                    Text("Product A")
                    Text("Product B")
                    Text("Product C")
                }
            }
        }
    }
}

#Preview {
    ProductlistView()
}
