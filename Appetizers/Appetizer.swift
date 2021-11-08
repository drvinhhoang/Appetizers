//
//  Appetizer.swift
//  Appetizers
//
//  Created by VINH HOANG on 08/11/2021.
//

import Foundation

struct Appetizer: Identifiable, Decodable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let calories: Int
    let protein: Int
    let carbs: Int
    let imageURL: String
    
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}


struct Mocdata {
    
    static let sampleAppetizer = Appetizer(id: 0001, name    : "This is a test",
                                           description : "This is a test. It's Yummy.",
                                           price        : 99.9,
                                           calories     : 99,
                                           protein      : 99,
                                           carbs        : 99,
                                           imageURL     : "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg")
    
    static let appetizers = [
                                sampleAppetizer,
                                sampleAppetizer,
                                sampleAppetizer,
                                sampleAppetizer,
                                sampleAppetizer,
                                sampleAppetizer,
                                sampleAppetizer,
                                sampleAppetizer
                            ]
    
}


