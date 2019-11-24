//
//  ContentView.swift
//  JavierCard
//
//  Created by José Javier Cueto Mejía on 23/11/19.
//  Copyright © 2019 José Javier Cueto Mejía. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {

            Color(.black).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                
                Image("Darth-Vader")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250.0, height: 150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.red, lineWidth: 10)
                        .overlay(
                            Circle().stroke(Color.white, lineWidth: 1)
                        )
                    )
                Text("Darth Vader")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("Lord Sith")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+43 343 345 455", imageName: "phone.fill")
                
                InfoView(text: "vader@darkside.com", imageName: "envelope.fill")
                
            }
          
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


