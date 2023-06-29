//
//  AWAW.swift
//  FINALKWK
//
//  Created by Halle Wooding on 6/28/23.
//

import SwiftUI

struct AWAW: View {
    var body: some View {
        ZStack {
            Color ("Pink")
                .ignoresSafeArea()
            VStack {
                Text("What is Anonymous Was A Woman?")
                    .foregroundColor (.white)
                    .font(.system(.largeTitle, design: .serif))
                    .fontWeight (.bold)
                    .foregroundColor (.white)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .padding()
                Text("Anonymous Was A Woman is a grant of $25,000 awarded to ten women artists over the age of 40 who are at a turning point in their careers. AWAW has awarded about 265 artists!")
                    .foregroundColor (.white)
                    .font(.system(.title3, design: .serif))
                    .foregroundColor (.white)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 10.0)
                    .padding(.bottom, 30.0)

                Text("Fun Fact: It began in 1996 when the National Endowment of the Arts stopped supporting individual artists. ")
                    .padding()
                    .border (Color ("LightPurple"), width: 8)
                    .foregroundColor (.white)
                    .fontWeight(.bold)
                    .font(.system(.title3, design: .serif))
                    .foregroundColor (.white)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .padding()
            }
            
        }
    }
}

struct AWAW_Previews: PreviewProvider {
    static var previews: some View {
        AWAW()
    }
}
