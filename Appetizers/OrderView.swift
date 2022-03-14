//
//  OrderView.swift
//  Appetizers
//
//  Created by VINH HOANG on 07/11/2021.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        NavigationView {
            Text("Orders")
                .navigationTitle("🍔 Orders")
        }
        
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
