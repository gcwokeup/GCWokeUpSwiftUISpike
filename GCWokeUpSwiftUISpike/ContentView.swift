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
            Text("Reset Counter")
              .fontWeight(.semibold)
              .foregroundColor(Color.orange)
          }
          VStack {
            Text("Result will update every 2 seconds.")
              .font(.title)
              .fontWeight(.bold)
              .foregroundColor(Color.white)
              .multilineTextAlignment(.center)
              .lineLimit(3)
            Image("yeeno")
              .resizable()
              .aspectRatio(contentMode: .fit)
            HStack {
              Text("Adding 3 every 2 seconds: ")
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(Color.green)
              Text("\(number)")
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(Color.green)
                .onReceive(timer) {_ in
                  self.number = self.number + 3
                }
            }
            Divider()
            HStack {
              Text("what it dooo?x1")
                .font(.body)
                .fontWeight(.semibold)
                .foregroundColor(Color.green)
              Image("yeeno")
                .resizable()
                .aspectRatio(contentMode: .fit)
            }
            HStack {
              Text("what it dooo?x2")
                .font(.body)
                .fontWeight(.semibold)
                .foregroundColor(Color.green)
              Image("yeeno")
                .resizable()
                .aspectRatio(contentMode: .fit)
            }
            HStack {
              Text("what it dooo?x3")
                .font(.body)
                .fontWeight(.semibold)
                .foregroundColor(Color.green)
              Image("yeeno")
                .resizable()
                .aspectRatio(contentMode: .fit)
            }
            HStack {
              Text("what it dooo?x4")
                .font(.body)
                .fontWeight(.semibold)
                .foregroundColor(Color.green)
              Image("yeeno")
                .resizable()
                .aspectRatio(contentMode: .fit)
            }
            HStack {
              Text("what it dooo?x5")
                .font(.body)
                .fontWeight(.semibold)
                .foregroundColor(Color.green)
              Image("yeeno")
                .resizable()
                .aspectRatio(contentMode: .fit)
            }
            HStack {
              Text("what it dooo?x7")
                .font(.body)
                .fontWeight(.semibold)
                .foregroundColor(Color.green)
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
