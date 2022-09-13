//
//  BSCard.swift
//  
//
//  Created by Daniel Farrell on 09/09/2022.
//

import Foundation
import SwiftUI

public struct BSInfoCell: View {
  
  var image: Image
  var icon: Image
  var titleText: String
  var subtitleText: String
  var titleTextColor: Color
  var subtitleTextColor: Color
  var backgroundColor: Color
  var cardWidth: CGFloat
  var cardHeight: CGFloat
  var cornerRadius: CGFloat
  
  public init(image: Image, icon: Image, titleText: String, subtitleText: String, titleTextColor: Color, subtitleTextColor: Color, backgroundColor: Color, cardWidth: CGFloat, cardHeight: CGFloat, cornerRadius: CGFloat) {
    self.image = image
    self.icon = icon
    self.titleText = titleText
    self.subtitleText = subtitleText
    self.titleTextColor = titleTextColor
    self.subtitleTextColor = subtitleTextColor
    self.backgroundColor = backgroundColor
    self.cardWidth = cardWidth
    self.cardHeight = cardHeight
    self.cornerRadius = cornerRadius
  }
  
  public var body: some View {
    ZStack(alignment: .leading) {
      RoundedRectangle(cornerRadius: cornerRadius)
        .frame(width: cardWidth, height: cardHeight, alignment: .leading)
        .foregroundColor(backgroundColor)
      HStack {
        image
          .resizable()
          .frame(width: 50, height: 50)
          .clipShape(Circle())
          .aspectRatio(contentMode: .fit)
          .padding(.leading, 8)
        VStack(alignment: .leading) {
          Text(titleText).bold()
            .foregroundColor(titleTextColor)
          Text(subtitleText)
            .foregroundColor(subtitleTextColor)
        }
        Spacer()
        icon
          .font(.system(size: 22))
          .foregroundColor(titleTextColor)
          .padding()
      }
    }
    .frame(width: cardWidth, height: cardHeight)
  }
}

struct BSInfoCell_Previews: PreviewProvider {
  static var previews: some View {
    BSInfoCell(image: Image(systemName: "person.circle"),
           icon: Image(systemName: "phone"),
           titleText: "Title Text",
           subtitleText: "subtitle text",
           titleTextColor: .black,
           subtitleTextColor: .gray,
           backgroundColor: .white,
           cardWidth: 340,
           cardHeight: 70,
           cornerRadius: 16)
  }
}
