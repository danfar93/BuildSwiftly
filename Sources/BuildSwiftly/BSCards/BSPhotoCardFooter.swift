//
//  BSPhotoCardFooter.swift
//  
//
//  Created by Daniel Farrell on 13/09/2022.
//

import Foundation
import SwiftUI

public struct BSPhotoCardFooter: View {
  
  var image: Image
  var icon: Image
  var leftText: String
  var rightText: String
  var textColor: Color
  var footerColor: Color
  var cardWidth: CGFloat
  var cardHeight: CGFloat
  var cornerRadius: CGFloat
  
  public init(image: Image, icon: Image, leftText: String, rightText: String, textColor: Color, footerColor: Color, cardWidth: CGFloat, cardHeight: CGFloat, cornerRadius: CGFloat) {
    self.image = image
    self.icon = icon
    self.leftText = leftText
    self.rightText = rightText
    self.textColor = textColor
    self.footerColor = footerColor
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
        ZStack {
          Rectangle()
            .foregroundColor(.white)
            .frame(width: cardWidth, height: 50)
            .clipShape(Rectangle())
          HStack {
            icon
              .foregroundColor(.black)
            Text(leftText)
              .bold()
              .foregroundColor(.black)
            Spacer()
              Text(rightText)
                .bold()
                .foregroundColor(.black)
          }.padding()
        }
      }
    }
    .frame(width: cardWidth, height: cardHeight)
  }
}

struct BSPhotoCardFooter_Previews: PreviewProvider {
  static var previews: some View {
    
    BSPhotoCardFooter(image: Image("island"),
                      icon: Image(systemName: "location.fill"),
                      leftText: "Cayman Islands",
                      rightText: "€1,000",
                      textColor: .black,
                      footerColor: .white,
                      cardWidth: 310,
                      cardHeight: 220,
                      cornerRadius: 16)
  }
}
