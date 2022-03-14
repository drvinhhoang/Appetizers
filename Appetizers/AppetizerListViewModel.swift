//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by VINH HOANG on 07/11/2021.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {
    
    @Published  var appetizers: [Appetizer] = []
    
    @Published var alertItem: AlertItem?

    
    func getAppetizers() {
        NetworkManager.shared.getAppetizer { [self] result in
            DispatchQueue.main.async {
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
