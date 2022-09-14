//
//  BSPhotoCard.swift
//  
//
//  Created by Daniel Farrell on 09/09/2022.
//

import Foundation
import SwiftUI

// TODO: pass in enum to determine if we show a ribbon, footer, left or right info view

public struct BSPhotoCard: View {
  
  var image: Image
  var icon: Image
  var text: String
  var ribbonText: String
  var textColor: Color
  var ribbonTextColor: Color
  var ribbonColor: Color
  var cardWidth: CGFloat
  var cardHeight: CGFloat
  var cornerRadius: CGFloat
  
  public init(image: Image, icon: Image, text: String, ribbonText: String, textColor: Color, ribbonTextColor: Color, ribbonColor: Color, cardWidth: CGFloat, cardHeight: CGFloat, cornerRadius: CGFloat) {
    self.image = image
    self.icon = icon
    self.text = text
    self.ribbonText = ribbonText
    self.textColor = textColor
    self.ribbonTextColor = ribbonTextColor
    self.ribbonColor = ribbonColor
    self.cardWidth = cardWidth
    self.cardHeight = cardHeight
    self.cornerRadius = cornerRadius
  }
  
  public var body: some View {
    ZStack(alignment: .leading) {
      image
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(width: cardWidth, height: cardHeight)
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
      VStack {
        Spacer()
        HStack {
          icon
            .foregroundColor(textColor)
          Text(text)
            .bold()
            .foregroundColor(textColor)
          Spacer()
          ZStack {
            RoundedRectangle(cornerRadius: 50)
              .foregroundColor(ribbonColor)
              .frame(width: 80, height: 30)
            Text(ribbonText)
              .bold()
              .foregroundColor(ribbonTextColor)
          }
        }.padding()
      }
    }
    .frame(width: cardWidth, height: cardHeight)
  }
}

struct BSPhotoCard_Previews: PreviewProvider {
  static var previews: some View {
    BSPhotoCard(image: Image("paris"),
                icon: Image(systemName: "location.fill"),
                text: "Paris",
                ribbonText: "€100",
                textColor: .white,
                ribbonTextColor: .black,
                ribbonColor: .white,
                cardWidth: 200,
                cardHeight: 220,
                cornerRadius: 16)
  }
}
