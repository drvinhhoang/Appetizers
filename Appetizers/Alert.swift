//
//  Alert.swift
//  Appetizers
//
//  Created by VINH HOANG on 20/08/2021.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    
    static let invalidData      = AlertItem(title: Text("Server error."),
                                              message: Text("The data recieved is invalid. Please contact support."),
                                              dismissButton: .default(Text("OK")))
    static let invalidResponse  = AlertItem(title: Text("Server error."),
                                              message: Text("Invalid response. Please contact support."),
                                              dismissButton: .default(Text("OK")))
    static let invalidURL       = AlertItem(title: Text("Server error."),
                                              message: Text("The url is invalid. Please contact support."),
                                              dismissButton: .default(Text("OK")))
    static let unableToComplete = AlertItem(title: Text("Server error."),
                                              message: Text("Unable to complete. Please check your internet conection."),
                                              dismissButton: .default(Text("OK")))
    static let invalidForm      = AlertItem(title: Text("Invalid form."),
                                              message: Text("Please make sure all fields in the form have been filled out."),
                                              dismissButton: .default(Text("OK")))
    static let invalidEmail     = AlertItem(title: Text("Invalid email."),
                                              message: Text("Please ensure your email is correct."),
                                              dismissButton: .default(Text("OK")))
    static let userSaveSuccess = AlertItem(title: Text("Save profile successfully."),
                                              message: Text("Your profile have been saved successfully."),
                                              dismissButton: .default(Text("OK")))
    static let invalidUserData = AlertItem(title: Text("Profile error."),
                                              message: Text("There's some error in your profile data. Please check again."),
                                              dismissButton: .default(Text("OK")))
    
}

