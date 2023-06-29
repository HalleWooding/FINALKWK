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
        ScrollView (showsIndicators: false) {
            
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
                    .resizable(capInsets: EdgeInsets())
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius (15)
                    .padding(.horizontal)
                HStack{
                    Spacer()
                    Image("down-arrow")
                    Spacer()
                }.padding(.bottom, 40)
                
                Image ("palette3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius (15)
                    .padding()
                Text ("But she has also created works with rich colors.")
                    .foregroundColor (.white)
                    .font(.system(.title3, design: .serif))
                    .foregroundColor (.white)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .padding()
                Image ("palette4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius (15)
                    .padding()
                
            }
            }
        }
      
    }
    
    struct Palette_Previews: PreviewProvider {
        static var previews: some View {
            Palette()
        }
    }
}
