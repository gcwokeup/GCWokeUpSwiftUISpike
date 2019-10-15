//
//  ContentView.swift
//  GCWokeUpSwiftUISpike
//
//  Created by Gino Paul Mendoza Capio on 10/15/19.
//  Copyright © 2019 GCWokeUp. All rights reserved.
//

import SwiftUI

//defines what UI looks like and behaves
struct ContentView: View {
  @State var number = 0
  @State private var showingWelcome = false

  let timer = Timer.publish(every: 2, on: .current, in: .common).autoconnect()

  func resetCounter() {
    self.number = self.number - self.number
  }

  var body: some View {
    Color(.systemIndigo)
      .edgesIgnoringSafeArea(.all)
      .overlay(
        ScrollView {
          Button(action: {self.resetCounter()}) {
            Text("Toggle label")
          }
          VStack {
            Text("Result will update every 2 seconds.")
              .font(.system(size: 50))
              .fontWeight(.bold)
              .foregroundColor(Color.white)
            Image("yeeno")
              .resizable()
              .aspectRatio(contentMode: .fit)
            HStack {
              Text("adding 3 every 2 seconds: ")
              Text("\(number)")
                .onReceive(timer) {_ in
                  self.number = self.number + 3
                }
            }
            Divider()
            HStack {
              Text("what it dooo?x1")
              Image("yeeno")
                .resizable()
                .aspectRatio(contentMode: .fit)
            }
            HStack {
              Text("what it dooo?x2")
              Image("yeeno")
                .resizable()
                .aspectRatio(contentMode: .fit)
            }
            HStack {
              Text("what it dooo?x3")
              Image("yeeno")
                .resizable()
                .aspectRatio(contentMode: .fit)
            }
            HStack {
              Text("what it dooo?x4")
              Image("yeeno")
                .resizable()
                .aspectRatio(contentMode: .fit)
            }
            HStack {
              Text("what it dooo?x5")
              Image("yeeno")
                .resizable()
                .aspectRatio(contentMode: .fit)
            }
            HStack {
              Text("what it dooo?x7")
              Image("yeeno")
                .resizable()
                .aspectRatio(contentMode: .fit)
            }
          }

        }
      )
  }

}

//defines what preview UI looks like and behaves
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 7"))
    }
}
