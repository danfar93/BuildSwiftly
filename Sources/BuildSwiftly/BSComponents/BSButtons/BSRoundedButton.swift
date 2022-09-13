//
//  BSRoundedButton.swift
//
//
//  Created by Daniel Farrell on 28/08/2022.
//

import Foundation
import SwiftUI

// TODO: should we have 1 base button and create button Styles ??
// TODO: add font size, weight & name

// TODO: frame - width / height

public struct BSRoundedButton: View {
    var text: String
    var tintColor: Color
    var backgroundColor: Color
    var action: (() -> Void)

    public init(text: String, tintColor: Color, backgroundColor: Color, action: @escaping () -> Void) {
        self.text = text
        self.tintColor = tintColor
        self.backgroundColor = backgroundColor
        self.action = action
    }

    public var body: some View {
        Button(action: action) {
            Text(text)
            .foregroundColor(tintColor)
            .padding()
            .background(backgroundColor)
            .cornerRadius(30)
        }
    }
}

struct BSRoundedButton_Previews: PreviewProvider {
    static var previews: some View {
        BSRoundedButton(
            text: "BS Rounded Button",
            tintColor: .white,
            backgroundColor: .blue
        ) {
            print("BS Rounded Button Pressed!")
        }
    }
}
