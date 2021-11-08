//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by VINH HOANG on 08/11/2021.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject var viewmodel = AppetizerListViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewmodel.appetizers) { appetizer in
                    AppetizerListViewCell(appetizer: appetizer)
                }
                .navigationTitle("🥮 Appetizers")
            }
            .onAppear {
                viewmodel.getAppetizer()
            }
            
            if viewmodel.isLoading {
                LoadingView()
            }
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



