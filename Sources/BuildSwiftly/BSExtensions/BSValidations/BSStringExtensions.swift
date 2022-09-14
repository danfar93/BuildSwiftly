//
//  BSStringExtensions.swift
//  
//
//  Created by Daniel Farrell on 14/09/2022.
//

import Foundation

 extension String {

   // email address validation
   func isValidEmail() -> Bool {
       let regex = try! NSRegularExpression(pattern: "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$", options: .caseInsensitive)
       return regex.firstMatch(in: self, options: [], range: NSRange(location: 0, length: count)) != nil
   }

   // password validation
   
 }
