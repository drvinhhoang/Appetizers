//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by VINH HOANG on 07/11/2021.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewmodel = AppetizerListViewModel()
    
    var body: some View {
        NavigationView {
            List(viewmodel.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("🍿 Appetizers")
        }
        .onAppear {
            viewmodel.getAppetizers()
        }
        .alert(item: $viewmodel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
    
   
    
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}


struct AppetizerListCell: View {
    
    let appetizer: Appetizer
    
    var body: some View {
        HStack {
            Image("asian-flank-steak")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(10)
            VStack(alignment: .leading) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                    .padding(.bottom, 5)
                Text("$"+String(appetizer.price))
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)

            }
            .padding(.leading)
        }
    }
}
