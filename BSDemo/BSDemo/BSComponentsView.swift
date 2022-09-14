//
//  BSComponentsView.swift
//  BSDemo
//
//  Created by Daniel Farrell on 09/09/2022.
//

import SwiftUI
import BuildSwiftly

struct BSComponentsView: View {
  var body: some View {
    List {
      Section(header: Text("TextFields with Icons")) {
        BSRoundedTextFieldIcon(
          placeholderText: "TextField",
          icon: Image(systemName: "person"),
          textColor: .blue,
          backgroundColor: Color(uiColor: .systemGray5),
          isSecureField: false)

        BSRoundedTextFieldIcon(
          placeholderText: "Secure TextField",
          icon: Image(systemName: "lock"),
          textColor: .blue,
          backgroundColor: Color(uiColor: .systemGray5),
          isSecureField: true)
      }
      .listRowBackground(EmptyView())
      .listRowSeparator(.hidden)

      Section(header: Text("TextFields")) {
        BSRoundedTextField(
          placeholderText: "TextField",
          textColor: .blue,
          backgroundColor: Color(uiColor: .systemGray5),
          isSecureField: false)

        BSRoundedTextField(
          placeholderText: "Secure TextField",
          textColor: .blue,
          backgroundColor: Color(uiColor: .systemGray5),
          isSecureField: true)
      }
      .listRowSeparator(.hidden)
      .listRowBackground(EmptyView())

      Section(header: Text("Buttons with Icons")) {
        BSRoundedButtonIconRight(
          text: "BS Rounded Button Icon",
          icon: Image(systemName: "info.circle"),
          tintColor: .white,
          backgroundColor: .blue
        ) {
          print("BS Rounded Button Icon Pressed!")
        }

        BSRoundedButtonIconLeft(
          text: "BS Rounded Button Icon",
          icon: Image(systemName: "info.circle"),
          tintColor: .white,
          backgroundColor: .blue
        ) {
          print("BS Rounded Button Icon Pressed!")
        }
      }
      .listRowSeparator(.hidden)
      .listRowBackground(EmptyView())

      Section(header: Text("Buttons")) {
        BSRoundedButton(
          text: "BS Rounded Button",
          tintColor: .white,
          backgroundColor: .blue
        ) {
          print("BS Rounded Button Pressed!")
        }
      }
      .listRowSeparator(.hidden)
      .listRowBackground(EmptyView())

      Section(header: Text("Cells")) {
        BSInfoCell(image: Image("profile"),
               icon: Image(systemName: "phone"),
               titleText: "Daniel Farrell",
               subtitleText: " Senior iOS Developer",
               titleTextColor: .black,
               subtitleTextColor: .gray,
               backgroundColor: .white,
               cardWidth: 310,
               cardHeight: 70,
               cornerRadius: 16)
      }
      .listRowSeparator(.hidden)
      .listRowBackground(EmptyView())
      
      Section(header: Text("Cards")) {
        BSPhotoCard(image: Image("paris"),
                    icon: Image(systemName: "location.fill"),
                    text: "Paris",
                    ribbonText: "€250",
                    textColor: .white,
                    ribbonTextColor: .black,
                    ribbonColor: .white,
                    cardWidth: 200,
                    cardHeight: 220,
                    cornerRadius: 16)
        
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
      .listRowSeparator(.hidden)
      .listRowBackground(EmptyView())
    }
    .listStyle(.sidebar)
    .foregroundColor(.black)
  }
}

struct BSComponentsView_Previews: PreviewProvider {
  static var previews: some View {
    BSComponentsView()
  }
}
