//
//  EmailPropertyWrapper.swift
//  MusicAppSwiftUI
//
//  Created by sai kumar on 16/01/25.
//

import Foundation
import SwiftUI

@propertyWrapper
//struct EmailPropertyWrapper {
//    
//    private var _value: String
//    var wrappedValue: String {
//        get
//        {
//            return isValidEmail(email: _value) ? _value : String()
//        }
//        set
//        {
//            _value = newValue
//        }
//    }
//    
//    init(_emailValue: String) {
//        _value = _emailValue
//    }
//    
//    private func isValidEmail(email: String) -> Bool {
//        let regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-za-z]{2,64}"
//        let pred = NSPredicate(format: "SELF MATCHES %@", regex)
//        return pred.evaluate(with: email)
//    }
//}

//@propertyWrapper

struct EmailPropertyWrapper {

     var wrappedValue: String



    init(wrappedValue: String) {

        self.wrappedValue = wrappedValue

    }



    var projectedValue: Binding<String> {

        Binding<String>(

            get: { wrappedValue },

            set: { newValue in

                guard isValidEmail(newValue) else {

                    // Handle invalid email (e.g., throw an error)

                    return

                }
            }

        )

    }



    private func isValidEmail(_ email: String) -> Bool {

        // Your email validation logic here

        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        return NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluate(with: email)

    }

}




