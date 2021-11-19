//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Mai Uchida on 2021/11/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack{
                DiceView(n: 1)
                DiceView(n: 1)
                }
                .padding()
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
            }
        }
    }
}

struct DiceView: View {
        let n: Int
        var body: some View {
            Image("dice\(n)")
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .padding()
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


