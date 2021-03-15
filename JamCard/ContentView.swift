//
//  ContentView.swift
//  JamCard
//
//  Created by Sherif Musa on 22.01.2020.
//  Copyright © 2020 Sherif Musa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green:  0.63, blue:  0.52 )
                .edgesIgnoringSafeArea(.all)
            VStack {
                
              
                Image("jam")
                .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke( Color.white, lineWidth: 5))
               
                
                Text("Jam Sheriff")
                    .font(Font.custom( "Pacifico-Regular", size: 40 ))
                    .bold()
                    .foregroundColor(.white)
           
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+7 (903) 122 4039" , imageName:  "phone.fill")
                InfoView(text: "jamsheriff@mail.ru", imageName:  "envelope.fill")

            }
             
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct  infoView: View {
    
    let text: String
    let imageName: String
    
    
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height:  50)
            .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text( text).foregroundColor(.black)
            })
            
            .padding(.all)
    }
}
