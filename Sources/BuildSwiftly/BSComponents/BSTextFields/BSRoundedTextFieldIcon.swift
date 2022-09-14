//
//  BSRoundedTextField.swift
//  
//
//  Created by Daniel Farrell on 08/09/2022.
//

import Foundation
import SwiftUI

public struct BSRoundedTextFieldIcon: View {
  
    // TODO: Frame - width, height & alignment
    // TODO: add a specific configurations for with credit card & phone number formatting

    @State var text = ""
    @State private var password: String = ""

    var placeholderText: String
    var icon: Image
    var textColor: Color
    var backgroundColor: Color
    var isSecureField: Bool

    public init(placeholderText: String, icon: Image, textColor: Color, backgroundColor: Color, isSecureField: Bool) {
        self.placeholderText = placeholderText
        self.icon = icon
        self.textColor = textColor
        self.backgroundColor = backgroundColor
        self.isSecureField = isSecureField
    }

    public var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .foregroundColor(backgroundColor)
                .frame(width: 300, height: 50, alignment: .center)
            HStack {
                icon
                    .padding(.leading, 10)
                    .foregroundColor(textColor)
                if isSecureField {
                    SecureField(placeholderText, text: $text)
                        .foregroundColor(textColor)
                        .frame(width: 260, height: 50, alignment: .center)
                } else {
                    TextField(placeholderText, text: $password)
                        .foregroundColor(textColor)
                        .frame(width: 260, height: 50, alignment: .center)
                }
            }
        }
    }
}

struct BSRoundedTextFieldIcon_Previews: PreviewProvider {
    static var previews: some View {
        BSRoundedTextFieldIcon(placeholderText: "placeholder",
                               icon: Image(systemName: "person"),
                               textColor: .white,
                               backgroundColor: .blue,
                               isSecureField: true)

    }
}

