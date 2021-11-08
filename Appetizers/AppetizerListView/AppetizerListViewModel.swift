//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by VINH HOANG on 08/11/2021.
//

import SwiftUI

class AppetizerListViewModel: ObservableObject {
    
    @Published var alertItem: AlertItem?
    
    @Published var appetizers: [Appetizer] = []
    
    @Published var isLoading = false
    
    
    func getAppetizer() {
        isLoading = true
        NetworkManager.shared.getAppetizer {[self] result in
            DispatchQueue.main.async {
                isLoading = false
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    switch error {
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
    
  
    
    
}
