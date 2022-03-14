//
//  Appetizer.swift
//  Appetizers
//
//  Created by VINH HOANG on 07/11/2021.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let protein: Double
    let calories: Int
    let carbs: Int
}


struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleApertizer = Appetizer(id: 0001,
                                           name: "Test Appetizer",
                                           description: "This is the description for my appetizer. It's yummy.", price: 9.99, imageURL: "", protein: 99, calories: 99, carbs: 99)
    
    static let appetizers = [sampleApertizer,
                             sampleApertizer,
                             sampleApertizer,
                             sampleApertizer]
}
