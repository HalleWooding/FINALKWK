//
//  Palette.swift
//  FINALKWK
//
//  Created by Halle Wooding on 6/28/23.
//

import SwiftUI

struct Palette: View {
    var body: some View {
        ZStack {
            Color ("LightPurple")
                .ignoresSafeArea()
            VStack {
                Text("Artist's Main Palettes")
                    .foregroundColor (.white)
                    .font(.system(.largeTitle, design: .serif))
                    .fontWeight (.bold)
                    .foregroundColor (.white)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .padding()
               
                Image ("palette1")
                    .resizable()
                       .aspectRatio(contentMode: .fit)
                       .cornerRadius (15)
                       .padding()
                Text ("Sonya tends to use more neutral colors in many of her works.")
                    .foregroundColor (.white)
                    .font(.system(.title3, design: .serif))
                    .foregroundColor (.white)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .padding()
                Image ("palette2")
                    .resizable()
                       .aspectRatio(contentMode: .fit)
                       .cornerRadius (15)
                       .padding()


            }
        }
      
    }
    
    struct Palette_Previews: PreviewProvider {
        static var previews: some View {
            Palette()
        }
    }
}
