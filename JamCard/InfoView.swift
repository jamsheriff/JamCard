//
//  InfoView.swift
//  JamCard
//
//  Created by Sherif Musa on 23.01.2020.
//  Copyright © 2020 Sherif Musa. All rights reserved.
//

import SwiftUI

 
struct  InfoView: View {
    
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

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
   
    }
    
}
