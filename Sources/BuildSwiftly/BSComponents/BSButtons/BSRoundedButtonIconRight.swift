//
//  BSRoundedButtonIcon.swift
//  
//
//  Created by Daniel Farrell on 28/08/2022.
//

import Foundation
import SwiftUI

// TODO: should we have 1 base button and create button Styles ??
// TODO: add font size, weight & name

// TODO: frame - width / height

public struct BSRoundedButtonIconRight: View {
    var text: String
    var icon: Image
    var tintColor: Color
    var backgroundColor: Color
    var action: (() -> Void)

    public init(text: String, icon: Image, tintColor: Color, backgroundColor: Color, action: @escaping () -> Void) {
        self.text = text
        self.icon = icon
        self.tintColor = tintColor
        self.backgroundColor = backgroundColor
        self.action = action
    }

    public var body: some View {
        Button(action: action) {
            HStack {
                Text(text)
                icon
            }
            .foregroundColor(tintColor)
            .padding()
            .background(backgroundColor)
            .cornerRadius(30)
        }
    }
}

struct BSRoundedButtonIconRight_Previews: PreviewProvider {
    static var previews: some View {
        BSRoundedButtonIconRight(
            text: "BS Rounded Button Icon",
            icon: Image(systemName: "plus"),
            tintColor: .white,
            backgroundColor: .blue
        ) {
            print("BS Rounded Button Icon Pressed!")
        }
    }
}

