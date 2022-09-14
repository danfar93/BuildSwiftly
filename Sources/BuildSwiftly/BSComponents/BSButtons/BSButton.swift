//
//  BSButton.swift
//
//
//  Created by Daniel Farrell on 28/08/2022.
//

import Foundation
import SwiftUI

// TODO: add font size, weight & name
// TODO: pass in corner radius

public struct BSButton: View {
  var text: String
  var tintColor: Color
  var backgroundColor: Color
  var imageOptions: ButtonImageOptions
  var firstIcon: Image?
  var secondIcon: Image?
  var buttonWidth: CGFloat
  var buttonHeight: CGFloat
  var cornerRadius: CGFloat
  var action: (() -> Void)
  
  public init(text: String,
              tintColor: Color,
              backgroundColor: Color,
              imageOptions: ButtonImageOptions = .none,
              icon: Image? = nil,
              secondIcon: Image? = nil,
              buttonWidth: CGFloat,
              buttonHeight: CGFloat,
              cornerRadius: CGFloat,
              action: @escaping () -> Void) {
    self.text = text
    self.tintColor = tintColor
    self.backgroundColor = backgroundColor
    self.imageOptions = imageOptions
    self.firstIcon = icon
    self.secondIcon = secondIcon
    self.buttonWidth = buttonWidth
    self.buttonHeight = buttonHeight
    self.cornerRadius = cornerRadius
    self.action = action
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
      }.frame(width: buttonWidth, height: buttonHeight)
    }
    .foregroundColor(tintColor)
    .padding()
    .background(backgroundColor)
    .cornerRadius(cornerRadius)
  }
}

struct BSButton_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
      BSButton(
        text: "BS Rounded Button",
        tintColor: .white,
        backgroundColor: .blue,
        buttonWidth: 300,
        buttonHeight: 20,
        cornerRadius: 30
      ) {
        print("BS Rounded Button Pressed!")
      }
      
      BSButton(
        text: "BS Rounded Button",
        tintColor: .white,
        backgroundColor: .blue,
        imageOptions: .imageLeft,
        icon: Image(systemName: "plus"),
        buttonWidth: 300,
        buttonHeight: 20,
        cornerRadius: 30
      ) {
        print("BS Rounded Button Pressed!")
      }
      
      BSButton(
        text: "BS Rounded Button",
        tintColor: .white,
        backgroundColor: .blue,
        imageOptions: .imageRight,
        icon: Image(systemName: "plus"),
        buttonWidth: 300,
        buttonHeight: 20,
        cornerRadius: 30
      ) {
        print("BS Rounded Button Pressed!")
      }
      
      BSButton(
        text: "BS Rounded Button",
        tintColor: .white,
        backgroundColor: .blue,
        imageOptions: .all,
        icon: Image(systemName: "plus"),
        buttonWidth: 300,
        buttonHeight: 20,
        cornerRadius: 30
      ) {
        print("BS Rounded Button Pressed!")
      }
      
      BSButton(
        text: "BS Rounded Button",
        tintColor: .white,
        backgroundColor: .blue,
        imageOptions: .all,
        icon: Image(systemName: "plus"),
        secondIcon: Image(systemName: "minus"),
        buttonWidth: 300,
        buttonHeight: 20,
        cornerRadius: 30
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
