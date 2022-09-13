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
  var imageOptions: ButtonImageOptions
  var firstIcon: Image?
  var secondIcon: Image?
  
  public init(text: String,
              tintColor: Color,
              backgroundColor: Color,
              imageOptions: ButtonImageOptions = .none,
              icon: Image? = nil,
              secondIcon: Image? = nil,
              action: @escaping () -> Void) {
    self.text = text
    self.tintColor = tintColor
    self.backgroundColor = backgroundColor
    self.action = action
    self.imageOptions = imageOptions
    self.firstIcon = icon
    self.secondIcon = secondIcon
  }
  
  public var body: some View {
    HStack {
      Button(action: action) {
        if imageOptions.contains(.imageLeft) {
          firstIcon
        }
        Text(text)
        
        if imageOptions.contains(.imageRight) {
          secondIcon ?? firstIcon
        }
      }
    }
    .foregroundColor(tintColor)
    .padding()
    .background(backgroundColor)
    .cornerRadius(30)
  }
}

struct BSRoundedButton_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
      BSRoundedButton(
        text: "BS Rounded Button",
        tintColor: .white,
        backgroundColor: .blue
      ) {
        print("BS Rounded Button Pressed!")
      }
      
      BSRoundedButton(
        text: "BS Rounded Button",
        tintColor: .white,
        backgroundColor: .blue,
        imageOptions: .imageLeft,
        icon: Image(systemName: "plus")
      ) {
        print("BS Rounded Button Pressed!")
      }
      
      BSRoundedButton(
        text: "BS Rounded Button",
        tintColor: .white,
        backgroundColor: .blue,
        imageOptions: .imageRight,
        icon: Image(systemName: "plus")
      ) {
        print("BS Rounded Button Pressed!")
      }
      
      BSRoundedButton(
        text: "BS Rounded Button",
        tintColor: .white,
        backgroundColor: .blue,
        imageOptions: .all,
        icon: Image(systemName: "plus")
      ) {
        print("BS Rounded Button Pressed!")
      }
      
      BSRoundedButton(
        text: "BS Rounded Button",
        tintColor: .white,
        backgroundColor: .blue,
        imageOptions: .all,
        icon: Image(systemName: "plus"),
        secondIcon: Image(systemName: "minus")
      ) {
        print("BS Rounded Button Pressed!")
      }
    }
  }
}

/// Option set for button images
public struct ButtonImageOptions: OptionSet {
  public let rawValue: Int8
  
  public init(rawValue: Int8) {
    self.rawValue = rawValue
  }
  
  public static let imageLeft = ButtonImageOptions(rawValue: 1 << 0)
  public static let imageRight = ButtonImageOptions(rawValue: 1 << 1)
  
  public static let all: ButtonImageOptions = [.imageLeft, .imageRight]
  public static let none: ButtonImageOptions = ButtonImageOptions(rawValue: 0)
}
