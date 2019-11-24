//
//  InfiView.swift
//  JavierCard
//
//  Created by José Javier Cueto Mejía on 23/11/19.
//  Copyright © 2019 José Javier Cueto Mejía. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.red)
                Text(text)
            })
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
        
    }
    
}

struct InfiView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill" )
            .previewLayout(.sizeThatFits)
    }
}
